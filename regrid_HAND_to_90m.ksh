lat_min=-5.04 
lat_max=3.27
lon_min=15.02
lon_max=25.76

input=HAND_30m_GEE.tif
output1=Congo_HAND_90m_full.tif

gdalwarp -te $lon_min $lat_min $lon_max $lat_max $input $output1

