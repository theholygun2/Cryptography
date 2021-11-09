function output = hillDecrypt(ciperText, message)
  A = [1,2,3; 4,5,6; 7,8,9];
  
  n = length(message) / 9;
  row = 3;
  col = 3;
  
  for i=1:n
    for j=1:row
      for k=1:col
        #disp ([int2str(j),", ", int2str(k)]);
      mtrx(j,k) = double(message(A(j,k))) - 97;
      endfor
    endfor
  endfor
   
  for i=1:n
    for j=1:row
      for k=1:col
        #disp ([int2str(j),", ", int2str(k)]);
        ctrx(j,k) = double(ciperText(A(j,k))) - 65;
      endfor
    endfor
  endfor
  
  mtrx
  ctrx
  
  mInvers = [10,18,15; 17,16,15; 4,9,21]
  cInvers = [21,1,18; 1,25,1; 17,2,0];
  mxc = mInvers * ctrx
  modMxC = mod(mxc, 26)
 
endfunction
