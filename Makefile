all: build

build:
	go build -o genhint main.go

idp:
	./genhint -m 0 -logtostderr -i example/Reduction.s 2>&1 > independence/Reduction.txt
	./genhint -m 0 -logtostderr -i example/FastWalshTransform.s 2>&1 > independence/FastWalshTransform.txt
	./genhint -m 0 -logtostderr -i example/PrefixSum.s 2>&1 > independence/PrefixSum.txt
	./genhint -m 0 -logtostderr -i example/MatrixTranspose.s 2>&1 > independence/MatrixTranspose.txt
	./genhint -m 0 -logtostderr -i example/BinarySearch.s 2>&1 > independence/BinarySearch.txt
	./genhint -m 0 -logtostderr -i example/BitonicSort.s 2>&1 > independence/BitonicSort.txt
	./genhint -m 0 -logtostderr -i example/SimpleConvolution.s 2>&1 > independence/SimpleConvolution.txt
	./genhint -m 0 -logtostderr -i example/DCT.s 2>&1 > independence/DCT.txt
	./genhint -m 0 -logtostderr -i example/FFT.s 2>&1 > independence/FFT.txt
	./genhint -m 0 -logtostderr -i example/DwtHaar1D.s 2>&1 > independence/DwtHaar1D.txt
	./genhint -m 0 -logtostderr -i example/QuasiRandomSequence.s 2>&1 > independence/QuasiRandomSequence.txt

htm:
	./genhint -m 2 -i example/Reduction.s 2>&1 > heatmap/Reduction.csv
	./genhint -m 2 -i example/FastWalshTransform.s 2>&1 > heatmap/FastWalshTransform.csv
	./genhint -m 2 -i example/PrefixSum.s 2>&1 > heatmap/PrefixSum.csv
	./genhint -m 2 -i example/MatrixTranspose.s 2>&1 > heatmap/MatrixTranspose.csv
	./genhint -m 2 -i example/BinarySearch.s 2>&1 > heatmap/BinarySearch.csv
	./genhint -m 2 -i example/BitonicSort.s 2>&1 > heatmap/BitonicSort.csv
	./genhint -m 2 -i example/SimpleConvolution.s 2>&1 > heatmap/SimpleConvolution.csv
	./genhint -m 2 -i example/DCT.s 2>&1 > heatmap/DCT.csv
	./genhint -m 2 -i example/FFT.s 2>&1 > heatmap/FFT.csv
	./genhint -m 2 -i example/DwtHaar1D.s 2>&1 > heatmap/DwtHaar1D.csv
	./genhint -m 2 -i example/QuasiRandomSequence.s 2>&1 > heatmap/QuasiRandomSequence.csv
	cd heatmap && find -name "*.csv" -exec sed -i '$$ s/.$$//' {} \;


dtl:
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/Reduction/Reduction_Kernels.bin > detail/Reduction.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/FastWalshTransform/FastWalshTransform_Kernels.bin > detail/FastWalshTransform.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/PrefixSum/PrefixSum_Kernels.bin > detail/PrefixSum.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/MatrixTranspose/MatrixTranspose_Kernels.bin > detail/MatrixTranspose.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/BinarySearch/BinarySearch_Kernels.bin > detail/BinarySearch.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/BitonicSort/BitonicSort_Kernels.bin > detail/BitonicSort.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/SimpleConvolution/SimpleConvolution_Kernels.bin > detail/SimpleConvolution.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/DCT/DCT_Kernels.bin > detail/DCT.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/FFT/FFT_Kernels.bin > detail/FFT.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/DwtHaar1D/DwtHaar1D_Kernels.bin > detail/DwtHaar1D.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/QuasiRandomSequence/QuasiRandomSequence_Kernels.bin > detail/QuasiRandomSequence.txt
