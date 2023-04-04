program ring_reduction

real*8, allocatable :: array(:),aux(:)
real*8 :: dt

integer :: start_time, end_time
integer :: ticks_per_second

write(*,*)"Program that reduces a ring of N numbers in [0,1) to a single number"

! Setting the Size 'N': ---------------------------------------------------------------------------------------
write(*,*)"Input the number 'N' of elements on the ring:"
read(*,*) N
allocate(aux(N))

! Starting Timer: ---------------------------------------------------------------------------------------
call system_clock(start_time, ticks_per_second)

! Generating the Pseudo-Random Numbers: ---------------------------------------------------------------------------------------
call random_number(aux)
array = aux

! Iterating the Process: ---------------------------------------------------------------------------------------
do while (N>2)
    i = maxloc(array, dim=1)
    if (i==1) then
        array(2) = array(N)*array(2)/array(1)
        array = array(2 : N-1)
    else if (i==N) then
        array(N-1) = array(N-1)*array(1)/array(N)
        array = array(2 : N-1)
    else
        array(i-1) = array(i-1)*array(i+1)/array(i)
        array = [array(1 : i-1),array(i+2 : N)]
    end if
	N = N-2
end do

! At the end: ---------------------------------------------------------------------------------------
if (N==2) then
    i = maxloc(array, dim=1)
    if (i==1) then
        array = [array(2)*array(2)/array(1)]
    else if (i==2) then
        array = [array(1)*array(1)/array(2)]
    end if
else
    array = [array(1)]
end if

! Stopping Timer: ---------------------------------------------------------------------------------------
call system_clock(end_time)
dt = real(end_time - start_time) / real(ticks_per_second) * 1000.0

! Printing Results: ---------------------------------------------------------------------------------------
write(*,*) array
print *, "Execution time:", dt, "milliseconds"

end program