import numpy as np
from matplotlib import pyplot as plt
import numpy.random as random
import math
import time

n = 10000
std_points = []
for i in range(n):
    std_points.append([-1.5, (i-n/2)*3./n])
    std_points.append([1.5, (i-n/2)*3./n])
    std_points.append([(i-n/2)*3./n, -1.5])
    std_points.append([(i-n/2)*3./n, 1.5])

std_points = np.array(std_points)

x1 = std_points[:, 0] + 0.05*random.randn(4*n)
y1 = std_points[:, 1] + 0.05*random.randn(4*n)

c15 = math.cos(math.pi*5/180)
s15 = math.sin(math.pi*5/180)
print(c15, s15)
x2 = std_points[:, 0] * c15 - std_points[:, 1] * s15 + 0.05*random.randn(4*n) + 0.1
y2 = std_points[:, 0] * s15 + std_points[:, 1] * c15 + 0.05*random.randn(4*n) + 0.1

class ICP:
    def __init__(self, pts):
        self.pts = pts
        self.R = np.array([[1, 0], [0, 1]])
        self.t = np.array([0, 0])
        self.n = len(pts)

    def sample(self, points, k):
        sample_idx = random.choice(n, k)
        return points[sample_idx, :]

    def match(self, A, B):
        BT = B.transpose()
        vecProd = np.dot(A,BT)
        SqA =  A**2
        sumSqA = np.matrix(np.sum(SqA, axis=1))
        sumSqAEx = np.tile(sumSqA.transpose(), (1, vecProd.shape[1]))

        SqB = B**2
        sumSqB = np.sum(SqB, axis=1)
        sumSqBEx = np.tile(sumSqB, (vecProd.shape[0], 1))
        SqED = sumSqBEx + sumSqAEx - 2*vecProd
        SqED[SqED<0]=0.0
        
        return np.array(np.argmin(SqED, axis=1)).squeeze()

    def getTrans(self, p, q, w):
        w_sum = np.sum(w)
        p_ = np.array([np.sum(p[:, 0]*w) / w_sum, np.sum(p[:, 1]*w) / w_sum])
        q_ = np.array([np.sum(q[:, 0]*w) / w_sum, np.sum(q[:, 1]*w) / w_sum])

        x = p - p_
        y = q - q_

        S = np.matmul(np.matmul(x.T, np.diag(w)), y)
        u, sigma, v = np.linalg.svd(S)
        R = np.matmul(v, u.T)
        t = q_ - np.matmul(R, p_)

        return [R, t]


    def __call__(self, new_pts):
        loop = 100
        iter = 0
        p1 = self.sample(new_pts, 150)
        p2 = self.sample(self.pts, 150)
        w = 1. / np.sqrt((p1[:,0]**2 + p1[:,1]**2))
        R = np.array([[1, 0], [0, 1]]) 
        t = np.array([0, 0])
        loss_last = 0
        while iter < loop:
            iter += 1
            idx = self.match(p1, p2)
            R0, t0 = self.getTrans(p1, p2[idx], w)
            p1 = np.matmul(R0, p1.T).T + t0
            loss = np.sum(w * np.sum((p1 - p2)**2, axis=1))
            R = np.matmul(R0, R)
            t = np.matmul(R0, t.T).T + t0
            # print(iter, loss, R, t)
            if(abs(loss - loss_last) < 0.001):
                break
            loss_last = loss

        self.pts = new_pts
        self.R = np.matmul(R, self.R)
        self.t = np.matmul(R, self.t.T).T + t

        return R, t
        
class Radar:
    def __init__(self, gt):
        self.gt_points = gt
    
    def __call__(self, x, y):
        return random.shuffle(self.gt_points - np.array([x, y]))

class Robot:
    def __init__(self, )

def test():
    rd = Radar(std_points)

    # p1 = np.dstack((x1,y1))[0]
    # p2 = np.dstack((x2, y2))[0]
    # t0 = time.time()
    # icp = ICP(p2)
    # R, t = icp(p1)
    # t1 = time.time()
    # print(t1 - t0)
    # p1 = np.matmul(R, p1.T).T + t


    # plt.scatter(std_points[:, 0], std_points[:, 1], s=1)
    # plt.scatter(p1[:, 0], p1[:, 1], s=1)
    # plt.scatter(p2[:, 0], p2[:, 1], s=1)
    # ax = plt.axes()
    # ax.set_aspect('equal', 'box')
    # plt.show()

if __name__ == "__main__":
    test()
