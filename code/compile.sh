icc -I"${MKLROOT}/include" -c MIPT.cpp -o MUPT.o
icc -I"${MKLROOT}/include" -c kron.cpp -o kron.o
icc -I"${MKLROOT}/include" -c Measure.cpp -o Measure.o
icc ./MIPT.o -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_lp64.a ${MKLROOT}/lib/intel64/libmkl_sequential.a ${MKLROOT}/lib/intel64/libmkl_core.a ${MKLROOT}/lib/intel64/libmkl_blacs_intelmpi_lp64.a kron.o Measure.o -Wl,--end-group -lpthread -lm -ldl -o ./MIPT.out