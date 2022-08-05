#lat_min=-5.063 
#lat_max=3.297
#lon_min=15.0
#lon_max=25.78

lat_min=-5.1 
lat_max=3.4
lon_min=14.9
lon_max=26.1


#for param in {slope, aspect,elv,roughness,ruggedness,TPI}; do
for param in slope; do
	echo $param
	input=Congo_${param}_90m.tif
	output1=Congo_${param}_90m_full.tif
	output2=Congo_${param}_1km_full.tif

	gdalwarp -te $lon_min $lat_min $lon_max $lat_max $input $output1
	gdal_translate -of GTiff $output1 $output2 -r nearest -outsize 1079 837
	
done
