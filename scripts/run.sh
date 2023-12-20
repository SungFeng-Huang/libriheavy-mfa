# runned: dev
# for subset in dev test_clean test_other; do
for subset in medium; do
    echo $subset;
    corpus_dir=/datasets/LibriLight/mfa_data/$subset/
    aligned_dir=/datasets/LibriLight/mfa_data_aligned/$subset/
    # corpus_dir=/datasets/LibriLight/mfa_tg_data/$subset/
    # aligned_dir=/datasets/LibriLight/mfa_tg_data_aligned/$subset/
    # cmd_option="-s 6"
    time \
        mfa align $corpus_dir english_us_arpa english_us_arpa $aligned_dir --config_path config.yaml --clean True;
done