all: build

build:
	go build -o genhint main.go

idp:
	./genhint -v 1 -logtostderr -i example/Reduction.s 2>&1 > independence/Reduction.txt
	./genhint -v 1 -logtostderr -i example/FastWalshTransform.s 2>&1 > independence/FastWalshTransform.txt
	./genhint -v 1 -logtostderr -i example/PrefixSum.s 2>&1 > independence/PrefixSum.txt
	./genhint -v 1 -logtostderr -i example/MatrixTranspose.s 2>&1 > independence/MatrixTranspose.txt
	./genhint -v 1 -logtostderr -i example/BinarySearch.s 2>&1 > independence/BinarySearch.txt
	./genhint -v 1 -logtostderr -i example/BitonicSort.s 2>&1 > independence/BitonicSort.txt
	./genhint -v 1 -logtostderr -i example/SimpleConvolution.s 2>&1 > independence/SimpleConvolution.txt
	./genhint -v 1 -logtostderr -i example/DCT.s 2>&1 > independence/DCT.txt
