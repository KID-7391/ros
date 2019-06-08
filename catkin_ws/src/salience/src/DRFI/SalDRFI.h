#pragma once

#include "CmDefinition.h"
//#include "CmFile.h"
#include "RegionFeature.h"
#include "EfficientGraphBased/segment-image.h"

struct BoundingBox{
	int x0, y0, x1, y1;
	BoundingBox(int _x0, int _y0, int _x1, int _y1):x0(_x0), y0(_y0), x1(_x1), y1(_y1){}
};

class SalDRFI
{
public:
	SalDRFI(void) : MARKER("DrfiData"), SZ_MARKER(sizeof("DrfiData")) {_dataLoaded = false;}

	void load(CStr dataFile = "Model.data");
	
	Mat getSalMap(CMat &img3u);

	Mat getSalMap(CMat &img3u, double sigma, double k, double minSize);

public: // Helper functions
	void save(CStr dataFile = "Model.data");
	static void MatlabDat2DataFile(CStr matlabData = "Model.mat", CStr dataFile = "Model.data");

private:
	vecD regRandomForestPredict(CMat &spSalData);

private: // Data terms
	int _N; // Number of segmentation
	vecD _w; // weights with dimension: N
	Mat _segPara1d; // Segmentation parameters: [Nx3]

	int _NumN; // nrNodes: Number of nodes (41565)
	int _NumT; // number of Tree (200)

	// int Matrix of size [NumN x NumT]
	Mat _lDau1i, _rDau1i, _mBest1i;

	// char matrix of size [NumN x NumT]
	Mat _nodeStatus1c;

	// double matrix of size [NumN x NumT]
	Mat _upper1d, _avNode1d;

	vecI _ndTree; //[NumT]

	Mat _mlFilters15d; // [19 x 19 x 15] 


private: // Helper variables
	bool _dataLoaded;
	const int SZ_MARKER;
	const char* MARKER;
};

//Y_hat = mexRF_predict(X',model.lDau,model.rDau,model.nodestatus,model.nrnodes,model.upper,model.avnode,model.mbest,model.ndtree,model.ntree);