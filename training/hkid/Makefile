LANG=hkid

DATASET=hkid.std.exp0.tr hkid.sv-basic-manual.exp2.tr


training_dir=../../tesseract-local/training/
mftraining=${training_dir}mftraining
cntraining=${training_dir}cntraining
combine_tessdata=${training_dir}combine_tessdata

all: mftraining cntraining
	${combine_tessdata} ${LANG}.
	cp ${LANG}.traineddata ../../tessdata

mftraining:
	${mftraining} -F font_properties -U unicharset -O ${LANG}.unicharset ${DATASET}
	mv inttemp ${LANG}.inttemp
	mv pffmtable ${LANG}.pffmtable

cntraining:
	${cntraining} ${DATASET}
	mv normproto ${LANG}.normproto
