

clear all;
clc;

% Membaca file CSV dan disimpan ke dalam variable yang sudah disediakan 
test = readtable('TestsetTugas1ML.csv');
train = readtable('TrainsetTugas1ML.csv'); 

% Mengubah tabel ke cell Matrix

testSet = table2cell(test);
trainSet = table2cell(train);

tidak = 0;
ya = 0 ;

% Menentukan berapa banyak Probabibilitas layak Ya dan Tidak dalam dataTrain  
for a=1:160
    
    if strcmpi(trainSet{a,9},'<=50K')
        tidak = tidak + 1;
    elseif strcmpi(trainSet{a,9},'>50K')
        ya = ya + 1;
    end
       
end;

jumAgeYoungY = 0;
jumAgeYoungT = 0;

jumAgeAdulY = 0
jumAgeAdulT = 0;

jumAgeOldY = 0;
jumAgeOldT = 0;

jumWorkPrivateY = 0;
jumWorkPrivateT = 0;

jumWorkLocGovY = 0;
jumWorkLocGovT = 0;

jumWorkSelfEmY = 0;
jumWorkSelfEmT = 0;

jumEduSomColT = 0;
jumEduSomColY = 0;

jumEduBachY = 0;
jumEduBachT = 0;

jumEduHonY = 0;
jumEduHonT = 0;

jumStatusMarSpoY = 0;
jumStatusMarSpoT = 0;

jumStatusNeverMaryY = 0;
jumStatusNeverMaryT = 0;

jumStatusDivY = 0;
jumStatusDivT = 0;

jumOcPSpY = 0;
jumOcPSpT = 0

jumOcCrRepY = 0; 
jumOcCrRepT = 0;

jumOcExManY = 0;
jumOcExManT = 0;

jumRelHusY = 0;
jumRelHusT = 0;

jumRelNFamY = 0; 
jumRelNFamT = 0;

jumRelOwnChildY = 0;
jumRelOwnChildT = 0;

jumHourNorY = 0;
jumHourNorT =0; 

jumHourLowY = 0;
jumHourLowT = 0;

jumHourManyY = 0 ;
jumHourManyT = 0;


for i=1:160
    
        % Tabel Untuk Age Young 
        if (strcmpi(trainSet{i,2},'young')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumAgeYoungT = jumAgeYoungT + 1;
            tidakAgeYoung = jumAgeYoungT/tidak;
            
        elseif (strcmpi(trainSet{i,2},'young')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumAgeYoungY = jumAgeYoungY + 1;
            yaAgeYoung = jumAgeYoungY/ya; 
            
        end; 
        
         % Tabel Untuk Age  Adult
         
         if (strcmpi(trainSet{i,2},'adult')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumAgeAdulT = jumAgeAdulT + 1;
            tidakAgeAdult = jumAgeAdulT/tidak;
            
         elseif (strcmpi(trainSet{i,2},'adult')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumAgeAdulY = jumAgeAdulY + 1;
            yaAgeAdult = jumAgeAdulY/ya; 
         end; 
        
      
         % Tabel Untuk Age Odld
         
        if (strcmpi(trainSet{i,2},'old')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumAgeOldT = jumAgeOldT + 1;
            tidakAgeOld = jumAgeOldT/tidak;
            
        elseif (strcmpi(trainSet{i,2},'old')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumAgeOldY = jumAgeOldY + 1;
            yaAgeOld = jumAgeOldY/ya; 
        end; 
        
        
        % Tabel untuk workclass Private 
        if (strcmpi(trainSet{i,3},'Private')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumWorkPrivateT = jumWorkPrivateT + 1;
            tidakWorkPrivate = jumWorkPrivateT/tidak;
            
        elseif (strcmpi(trainSet{i,3},'Private')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumWorkPrivateY = jumWorkPrivateY + 1;
            yaWorkPrivate = jumWorkPrivateY/ya; 
        end; 
        
        % Tabel Untuk Workclass Local Government
        if (strcmpi(trainSet{i,3},'Local-gov')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumWorkLocGovT = jumWorkLocGovT + 1;
            tidakWorkLocGov = jumWorkLocGovT/tidak;
            
        elseif (strcmpi(trainSet{i,3},'Local-gov')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumWorkLocGovY = jumWorkLocGovY + 1;
            yaWorkLocGov = jumWorkLocGovY/ya; 
        end; 
        
        % Tabel untuk workclass Self Employment 
        if (strcmpi(trainSet{i,3},'Self-emp-not-inc')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumWorkSelfEmT = jumWorkSelfEmT + 1;
            tidakWorkSelfEm = jumWorkSelfEmT/tidak;
            
        elseif (strcmpi(trainSet{i,3},'Self-emp-not-inc')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumWorkSelfEmY = jumWorkSelfEmY + 1;
            yaWorkSelfEm = jumWorkSelfEmY/ya; 
        end; 
        
        
        % Tabel Untuk College Some-college
         
        if (strcmpi(trainSet{i,4},'Some-college')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumEduSomColT = jumEduSomColT + 1;
            tidakEduSomCol = jumEduSomColT/tidak;
            
        elseif (strcmpi(trainSet{i,4},'Some-college')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumEduSomColY = jumEduSomColY + 1;
            yaEduSomCol = jumEduSomColY/ya; 
        end; 
        
        
        % Tabel Untuk College Bachelors
        
        if (strcmpi(trainSet{i,4},'Bachelors')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumEduBachT = jumEduBachT + 1;
            tidakEduBach = jumEduBachT/tidak;
            
        elseif (strcmpi(trainSet{i,4},'Bachelors')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumEduBachY = jumEduBachY + 1;
            yaEduBach = jumEduBachY/ya; 
        end; 
        
        
        % Tabel Untuk College Honours
        if (strcmpi(trainSet{i,4},'HS-grad')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumEduHonT = jumEduHonT + 1; 
            tidakEduHon = jumEduHonT/tidak;
            
        elseif (strcmpi(trainSet{i,4},'HS-grad')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumEduHonY = jumEduHonY + 1;
            yaEduHon = jumEduHonY/ya; 
        end; 
        
        
        % Tabel Untuk Marital Status Married-civ-spouse
        if (strcmpi(trainSet{i,5},'Married-civ-spouse')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumStatusMarSpoT = jumStatusMarSpoT + 1;
            tidakStatusMarSpo = jumStatusMarSpoT/tidak;
            
        elseif (strcmpi(trainSet{i,5},'Married-civ-spouse')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumStatusMarSpoY = jumStatusMarSpoY + 1; 
            yaStatusMarSpo = jumStatusMarSpoY/ya; 
        end; 
        
        
       % Tabel Untuk Marital Status Never-married 
         if (strcmpi(trainSet{i,5},'Never-married')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumStatusNeverMaryT = jumStatusNeverMaryT + 1;
            tidakStatusNeverMary = jumStatusNeverMaryT/tidak;
            
        elseif (strcmpi(trainSet{i,5},'Never-married')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumStatusNeverMaryY = jumStatusNeverMaryY + 1;
            yaStatusNeverMary = jumStatusNeverMaryY/ya; 
        end; 
        
        
         % Tabel Untuk Marital Status Divorced
        if (strcmpi(trainSet{i,5},'Divorced')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumStatusDivT = jumStatusDivT + 1;
            tidakStatusDiv = jumStatusDivT/tidak;
            
        elseif (strcmpi(trainSet{i,5},'Divorced')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumStatusDivY = jumStatusDivY + 1;
            yaStatusDiv = jumStatusDivY/ya; 
        end; 
        
        
        % Tabel Untuk Occupation Prof-specialty
        if (strcmpi(trainSet{i,6},'Prof-specialty')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumOcPSpT = jumOcPSpT + 1;
            tidakOcPSp = jumOcPSpT/tidak;
            
        elseif (strcmpi(trainSet{i,6},'Prof-specialty')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumOcPSpY =  jumOcPSpY + 1;
            yaOcPSp = jumOcPSpY/ya; 
        end; 
        
        % Tabel Untuk Occupation Craft-repair
         if (strcmpi(trainSet{i,6},'Craft-repair')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumOcCrRepT = jumOcCrRepT + 1;
            tidakOcCrRep = jumOcCrRepT/tidak;
            
         elseif (strcmpi(trainSet{i,6},'Craft-repair')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumOcCrRepY =  jumOcCrRepY + 1;
            yaOcCrRep = jumOcCrRepY/ya; 
         end;  
         
          % Tabel Untuk Occupation Exec-managerial
         if (strcmpi(trainSet{i,6},'Exec-managerial')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumOcExManT = jumOcExManT + 1;
            tidakOcExMan = jumOcExManT/tidak;
            
         elseif (strcmpi(trainSet{i,6},'Exec-managerial')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumOcExManY =  jumOcExManY + 1;
            yaOcExMan = jumOcExManY/ya; 
         end;  
         
         
         % Tabel Untuk Relationship Husband 
         
         if (strcmpi(trainSet{i,7},'Husband')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumRelHusT = jumRelHusT + 1;
            tidakRelHus = jumRelHusT/tidak;
            
         elseif (strcmpi(trainSet{i,7},'Husband')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumRelHusY =  jumRelHusY + 1;
            yaRelHus = jumRelHusY/ya; 
         end; 
         
         
         % Tabel Untuk Relationship Not-in-family
         if (strcmpi(trainSet{i,7},'Not-in-family')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumRelNFamT = jumRelNFamT + 1;
            tidakRelNFam = jumRelNFamT/tidak;
            
         elseif (strcmpi(trainSet{i,7},'Not-in-family')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumRelNFamY = jumRelNFamY + 1;
            yaRelNFam = jumRelNFamY/ya; 
         end; 
         
         
         % Tabel Untuk Relationship Own-child
         
         if (strcmpi(trainSet{i,7},'Own-child')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumRelOwnChildT = jumRelOwnChildT + 1;
            tidakRelOwnChild = jumRelOwnChildT/tidak;
            
         elseif (strcmpi(trainSet{i,7},'Own-child')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumRelOwnChildY = jumRelOwnChildY + 1;
            yaRelOwnChild = jumRelOwnChildY/ya; 
         end; 
         
         
         % Tabel Untuk Hours-Per-Week normal
         if (strcmpi(trainSet{i,8},'normal')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumHourNorT = jumHourNorT + 1;
            tidakHourNor = jumHourNorT/tidak;
            
         elseif (strcmpi(trainSet{i,8},'normal')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumHourNorY = jumHourNorY + 1;
            yaHourNor = jumHourNorY/ya; 
         end; 
         
         
         % Tabel Untuk Hours-Per-Week low
         if (strcmpi(trainSet{i,8},'low')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumHourLowT = jumHourLowT + 1;
            tidakHourLow = jumHourLowT/tidak;
            
         elseif (strcmpi(trainSet{i,8},'low')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumHourLowY = jumHourLowY + 1;
            yaHourLow = jumHourLowY/ya; 
         end; 
         
         
         % Tabel Untuk Hours-Per-Week Many
         if (strcmpi(trainSet{i,8},'many')) &&  (strcmpi(trainSet{i,9},'<=50K'))
            jumHourManyT = jumHourManyT + 1;
            tidakHourMany = jumHourManyT/tidak;
            
         elseif (strcmpi(trainSet{i,8},'many')) &&  (strcmpi(trainSet{i,9},'>50K'))
            jumHourManyY = jumHourManyY + 1;
            yaHourMany = jumHourManyY/ya; 
         end; 
         
end; 

% Ditest Pakai Data Test 

for j=1:40
    
    % Ambil data yang sederet
    
        % Untuk Age 
        if (strcmpi(testSet{j,2},'young'))
            pilihAgeYa(j) = yaAgeYoung;
            pilihAgeTidak(j) = tidakAgeYoung
            
        elseif (strcmpi(testSet{j,2},'adult'))
            pilihAgeYa(j)=yaAgeAdult;
            pilihAgeTidak(j) = tidakAgeAdult;
        elseif (strcmpi(testSet{j,2},'old'))
            pilihAgeYa(j) = yaAgeOld;
            pilihAgeTidak(j) = tidakAgeOld;
        end;
        
        
        % Untuk WorkClass
        
        if (strcmpi(testSet{j,3},'Private'))
            pilihWorkYa(j) = yaWorkPrivate;
            pilihWorkTidak(j) = tidakWorkPrivate;
            
        elseif (strcmpi(testSet{j,3},'Local-gov'))
            pilihWorkYa(j) =yaWorkLocGov;
            pilihWorkTidak(j) = tidakWorkLocGov;
        elseif (strcmpi(testSet{j,3},'Self-emp-not-inc'))
            pilihWorkYa(j) = yaWorkSelfEm;
            pilihWorkTidak(j) = tidakWorkSelfEm;
        end;
        
        % Untuk Education
        if (strcmpi(testSet{j,4},'HS-grad'))
            pilihEduYa(j) = yaEduHon;
            pilihEduTidak(j) = tidakEduHon;
          
        elseif (strcmpi(testSet{j,4},'Bachelors'))
            pilihEduYa(j) =yaEduBach;
            pilihEduTidak(j) = tidakEduBach;
        elseif (strcmpi(testSet{j,4},'Some-college'))
            pilihEduYa(j) = yaEduSomCol;
            pilihEduTidak(j) = tidakEduSomCol;
        end;
        
        
        % Untuk Marital Status 
        
        if (strcmpi(testSet{j,5},'Never-married'))
            pilihStatusYa(j) = yaStatusNeverMary;
            pilihStatusTidak(j) = tidakStatusNeverMary;
          
        elseif (strcmpi(testSet{j,5},'Divorced'))
            pilihStatusYa(j) =yaStatusDiv;
            pilihStatusTidak(j) = tidakStatusDiv;
        elseif (strcmpi(testSet{j,5},'Married-civ-spouse'))
            pilihStatusYa(j) = yaStatusMarSpo;
            pilihStatusTidak(j) = tidakStatusMarSpo;
        end;
        
        
        % Untuk Occupation
        
         if (strcmpi(testSet{j,6},'Craft-repair'))
            pilihOcYa(j) = yaOcCrRep;
            pilihOcTidak(j) = tidakOcCrRep;
          
        elseif (strcmpi(testSet{j,6},'Exec-managerial'))
            pilihOcYa(j) = yaOcExMan;
            pilihOcTidak(j) = tidakOcExMan;
        elseif (strcmpi(testSet{j,6},'Prof-specialty'))
            pilihOcYa(j) = yaOcPSp;
            pilihOcTidak(j) = tidakOcPSp;
        end;
        
        
        % Untuk Relationship
        
         if (strcmpi(testSet{j,7},'Not-in-family'))
            pilihRelYa(j) = yaRelNFam;
            pilihRelTidak(j) = tidakRelNFam;
          
        elseif (strcmpi(testSet{j,7},'Husband'))
            pilihRelYa(j) = yaRelHus;
            pilihRelTidak(j) = tidakRelHus;
        elseif (strcmpi(testSet{j,7},'Own-child'))
            pilihRelYa(j) = yaRelOwnChild;
            pilihRelTidak(j) = tidakRelOwnChild;
        end;
        
        
        % Untuk hours-per-week
        
         if (strcmpi(testSet{j,8},'normal'))
            pilihHourYa(j) = yaHourNor;
            pilihHourTidak(j) = tidakHourNor;
          
        elseif (strcmpi(testSet{j,8},'low'))
            pilihHourYa(j) = yaHourLow;
            pilihHourTidak(j) = tidakHourLow;
        elseif (strcmpi(testSet{j,8},'many'))
            pilihHourYa(j) = yaHourMany;
            pilihHourTidak(j) = tidakHourMany;
        end;
        
        
        
        
        % Probabilitas Tidak 
           tidakProb(j) = pilihAgeTidak(j) * pilihEduTidak(j) * pilihHourTidak(j) * pilihOcTidak(j)...
                          * pilihRelTidak(j) * pilihStatusTidak(j) * pilihWorkTidak(j) * tidak ; 
       % Probabilitas Ya 
           yaProb(j) = pilihAgeYa(j) * pilihEduYa(j) * pilihHourYa(j) * pilihOcYa(j)...
                          * pilihRelYa(j) * pilihStatusYa(j) * pilihWorkYa(j) * ya ; 

           if (tidakProb(j) > yaProb(j))
               hasil{j} = '<=50';

           elseif (tidakProb(j) < yaProb(j))
               hasil{j} = '>50';
           end;
    
end;

Tebakan = transpose(hasil);
TebakanTugas1 = cell2table(Tebakan,'VariableNames',{'Hasil_Tebakan'});

% Ubah Ke File CSV
writetable(TebakanTugas1,'TebakanTugas1.csv'); 








