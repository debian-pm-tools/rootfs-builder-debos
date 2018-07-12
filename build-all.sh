#!/bin/bash -e

outdir=out
logdir=log

if [ ! -d $outdir ]; then mkdir $outdir; fi
if [ ! -d $logdir ]; then mkdir $logdir; fi

recipes=(halium-generic.yml mainline.yml)
architectures=(armhf arm64 i386)
variants=(plamo default)

for recipe in $recipes; do
	for architecture in $architectures; do
		for variant in $variants; do
			echo "==========================="
			echo "Recipe:		$recipe	"
			echo "Architecture: 	$architecture"
			echo "Variant:		$variant"
			echo "==========================="

			# Run debos writing the output into a log file while printing and filtering it
			sudo debos \
				--artifactdir=$outdir \
				-t architecture:$architecture \
				-t variant:$variant \
				$recipe > \
				$logdir/${recipe}_${architecture}_${variant}.log & \
				tail -f $logdir/${recipe}_${architecture}_${variant}.log | grep $(date +%Y/%m/%d)
		done
	done
done
