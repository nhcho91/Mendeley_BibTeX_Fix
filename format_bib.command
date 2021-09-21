#!/bin/sh
# explicit setting of script execution directory
cd -- "$(dirname -- "$BASH_SOURCE")"
echo "\n"

# Run biber in tool mode --- Last verified: 31 August 2021 / Biber ver: 2.16
#biber --tool --validate-datamodel  --output-file=export_validate.bib export.bib
biber --tool --configfile=format_entry_bib.conf --output-legacy-date --output-field-order=author,title,journaltitle,year,volume,issue,pages,doi --output-field-replace=issue:number,journaltitle:journal --output-file=export_formatted.bib export.bib

# Remove dummy files
rm export.bib.blg
