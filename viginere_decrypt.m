function output = viginere_decrypt(message, key)
  decryptText = "";
  n = 0; #digunakan supaya key tidak membaca special characters
  
  for i=1:(length(message) - length(key)) #untuk menambah alphabet pada key bila teks lebih besar daripada key tersebut
    key = strcat(key, substr(key, mod(i, length(key)),1)); # proses penambahan key
  endfor
  
  for i=1:length(message)
    
    a = substr(message,i,1);
    b = substr(key,i - n,1); # i-n supaya kuncinya akan menggunakan kunci di posisi i - n, atau menghindari membaca special characters 
    c = a - b  + 26; #proses decryption
    
    if a == " " # untuk tetap melibatkan space tetapi menaruhnya tetap di text
      n = n + 1; # menambah n setiap menemukan symbol atau space
      decryptText = strcat(decryptText, {" "},char(a));
      continue
    endif
    
    if a == "?" || a == "," || a == "." || a == "-" # untuk tetap melibatkan symbol dan continue ke alphabet selanjutnya
      n = n + 1; # menambah n setiap menemukan symbol atau space
      decryptText = strcat(decryptText, char(a));
      continue
    endif
    
    x = mod(c, 26);#proses decryption
    x = x + double("A");
    decryptText = strcat(decryptText,char(x));#menggabungkan alphabet yang telah didecrypt dengan alphabet yang sudah ada sebelumnya
    
  endfor
  output = decryptText;
endfunction

#KXNMIR ERCLKUA AIXA GKLKE YGJSB OCQU XVRMBERPIVENP WVYU MMRCQWXKH NIIB EVVI WYAIPKLTCQ UYNFIKH YGJSB OCQU? VBNMR DNFQ TUJCJKHAAI KXNNIR CLC. LOHTCV MUEC IZUYCOS, EVVI LCFC JOHNT-JOHNT UOHTGZDC XGINUNP TOVVJ JKCX VIXJN CLK ERCLKUA AIXA YGJSB OWZEE. FGIXXNKVIU FCRK ERJQNOCCV DCQCS WYZRMBERPIVENP SOUQCIX FRDQR VHTCU, UQCSKB XKBK VVUI WYAIPKLTCQ UYNFIKH LCVQ FRDQR VNKS. CYNPLKCAAI CUWC SOBVFCZUA VQNUX OMWJRTSOHNNSKH XGBOLOCBKMNP, JKANKUKHNMIR WNTIXSN MQDU ZGUKBNOQ UYNICXANP. AKUG FIVUZ RMZYECVQUA LCCNEW SOCAIQXUA WVDOX FIWUV UMWUXKV WYAIOOVH-IMLO. FCID EVVI VUCCZVUU, MQDU NMIX FRDQR GRPORUEIIS GNMVK ERPGKHT. DMQCGWXEH XGJOLNFIKH FWIDO UCT VYOKP LOEWS, WYZDCKN NNICUA RMBFHPGK ERCLKUA AIXA YGJSB OCQU.