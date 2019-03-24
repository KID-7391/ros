# Farewell

## Description
A service robot based on ROS.

### Topic goal
After a party, some of the guests began to take cabs home.This robot can recognize those people who are waving, help them take their luggages and lead them to cabs.

### Task splitting
pose recognization

luggage identification

Manipulator Control

SLAM

### Pose recognization
Detect key-points Based on openpose and judge if a person is waving,then send the coordinate to SLAM part.

(TODO:)In case that the person is outside the camera,we will distinguishing approximate direction with sound source localization.
