mfa model download acoustic english_us_arpa
mfa model download dictionary english_us_arpa
# for subset in dev test_clean test_other; do
for subset in medium; do
    echo $subset;
    corpus_dir=/datasets/LibriLight_aligned/raw_data_cuts/$subset/
    aligned_dir=/datasets/LibriLight_aligned/textgrids/$subset/
    cmd_option="-j 16"
    time \
        mfa align $corpus_dir english_us_arpa english_us_arpa $aligned_dir --config_path config.yaml --clean True $cmd_option;
done