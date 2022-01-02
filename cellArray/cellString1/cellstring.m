% We will divide a poem given to us into lines and store it in a cell array.
poem='İstanbulu dinliyorum, gozlerim kapalı.Once hafiften bir rüzgar esiyor.Yavaş yavaş sallanıyor yapraklar ağaçlarda.Uzaklarda, cok uzaklarda.Sucuların hiç durmayan çıngırakları.İstanbulu dinliyorum, gözlerim kapalı.';
time=counter(poem); %number of dat
array_cell=cell(time,1);
empty='';
position=findstr(poem,'.');
array_cell{1}=copying(poem,1,position(1),position);
for ii=2:length(position)
    array_cell{ii}=copying(poem,position(ii-1),position(ii),position);
end

celldisp(array_cell);

