program test

! Test 1: ----------------------------------
! real*8 :: array(10)
! call random_number(array)
! write(*,*) array

! Test 2: ----------------------------------
! real*8 :: array(10),a(4),b(4),res(8)
! call random_number(array)
! write(*,*) array

! array(4) = (array(4)*array(6))/array(5)
! a = array(1:4)
! b = array(7:10)
! res = [a,b]
! write(*,*) res

! Test 3: ----------------------------------
! real*8, allocatable :: array(:),aux(:)
! N = 10
! allocate(array(N))
! call random_number(array)
! write(*,*) array

! array(4) = (array(4)*array(6))/array(5)
! aux = [array(1:4),array(7:10)]
! write(*,*) aux

! Test 4: ----------------------------------
real*8, allocatable :: array(:),aux(:)
N = 10
allocate(aux(N))
call random_number(aux)
array = aux
write(*,*) array

array = [array(1:4),array(7:10)]
write(*,*) array

array = array(3:6)
i = maxloc(array, dim=1)
write(*,*) array
write(*,*) i

end program