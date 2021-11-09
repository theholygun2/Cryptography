function output = affine_decrypt(message, alpha, beta)
  decryptedtext = "";
  msg = "";
  modInv = 0;
  
  #mencari ModInvers dari alpha
  for j=1:26
    a = mod(alpha, 26);#modular 26 dari key 
    b = mod(j, 26); #modular 26 dari alphabet
    g = a * b;
    e = mod(g, 26);
    
    if e == 1 # bila hasil == 1 maka ditemukan inversenya
      modInv = j; # maka kita mengambil alphabet diposisi ini
    endif
  endfor
  
  for s=1:length(message), #looping setiap alphabet yang ada di pesan cipher atau message
    # untuk tetap melibatkan space tetapi menaruhnya tetap di text
    if substr(message,s,1) == " "
      decryptedtext = strcat(decryptedtext, {" "});
      continue
    endif
    # untuk tetap melibatkan symbol dan continue ke alphabet selanjutnya
    if substr(message,s,1) == "." || substr(message,s,1) == "," || substr(message,s,1) == "." || substr(message,s,1) == "-"
      decryptedtext = strcat(decryptedtext, char(substr(message,s,1)));
      continue
    endif
    #proses decryption
    c = substr(message,s,1);
      #modInvers * bitChar - beta
      theCode = (modInv * (c - "A")) - beta;
      theMod = mod(theCode,26); 
      theCode2 = theMod + "A";
      decryptedtext = strcat(decryptedtext,char(theCode2));
    
  endfor
  output = decryptedtext
endfunction

#DFTOLS FAFSBX YNXT YYP PNZWZA EXDOSXT, IZBN PFENTZTNA MNE RNAB DNPN. UX OFABNM PFAXABTNOARN WFPNTNXNA YYP TNSFAN UXBZANTNA ZAOZT OSNADWLSONDX PZUXT, WFSONPXAN OXUNT PFPXAON OZDEN. MNSBN YYP PNDXM OFONW DFWFSOX DFYFEZP EFYNSNA. YFBXOZ IZBN UFABNA EXDOSXT. PFDTXWZA YNARNT VNSBN RNAB PFARNENTNA OK DNNO EFYNSNA, WEA OXUNT PFANXTTNA MNSBN. PFSFTN PFAINVNY ELAINTNA WFSPXAONNA UFABNA PFABFEZNSTNA DOLT ONPYNMNA UNA IZBN LSNAB-LSNAB RNAB DONAUYR, DXNW PFANABNAX BNABBZNA.