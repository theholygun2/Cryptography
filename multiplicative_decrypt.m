function output = multiplicative_decrypt(message, key)
  modInv = 0;
  decrypt_text = "";
  # mencari modInvers
  for j=1:26
    a = mod(key, 26);#modular 26 dari key 
    b = mod(j, 26); #modular 26 dari alphabet
    c = a * b;
    d = mod(c, 26);
    
    if d == 1 # bila hasil == 1 maka ditemukan inversenya
      modInv = j;
    endif
  endfor
  
  for i=1:length(message) #looping melalui setiap alphabet dalam message
    
    if substr(message,i,1) == " "# untuk tetap melibatkan space tetapi menaruhnya tetap di text
      decrypt_text = strcat(decrypt_text, {" "});
      continue
    endif
    # untuk tetap melibatkan symbol dan continue ke alphabet selanjutnya
    if substr(message,i,1) == "." || substr(message,i,1) == "," || substr(message,i,1) == "." || substr(message,i,1) == "-"
      decrypt_text = strcat(decrypt_text, char(substr(message,i,1)));
      continue
    endif
    
    msg = double(substr(message,i,1)) - 65;# convert alphabet message ke posisi alphabet (0 - 26)
    g = mod((modInv * msg), 26) + 65;#proses decryption
    decrypt_text = strcat(decrypt_text, char(g));#menggabungkan alphabet yang telah didecrypt dengan alphabet yang sudah ada sebelumnya
    
  endfor
  output = decrypt_text;
endfunction
#UOVAW XCBS HONIOQXANIAN YCYVOQ TKICYVCW NAYCKNAT YOXAIACQANA RCQAWYSR RATAQ HAYAT VOBYOXSV, XOBLSNIYC YOXAIAC AUSAN XAIC QONVOBC, HCQHCNAN TOQXAIA NKN WOQONVOBCAN, ISXOBNSB, RAN XSHAVC YOBVA MATCWKVA RATAQ BANIWA HONGSYSNAN WOXCZAWAN RAN BONUANA WOBZA GANI VOBWACV HONIOQXANIAN YCYVOQ TKICYVCW NAYCKNAT RC XCRANI VSIAY QAYCNI-QAYCNI, GANI RCVSANIWAN RATAQ RKWSQON BONUANA YVBAVOICY QAYCNI-QAYCNI WOQONVOBCAN AVAS TOQXAIA HOQOBCNVAF NKN WOQONVOBCAN RAN HOQOBCNVAF RAOBAF YOXAIAC XAICAN RABC RKWSQON HOBONUANAAN HOQXANISNAN.