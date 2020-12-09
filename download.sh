wget https://downloads.tatoeba.org/exports/per_language/toki/toki_sentences.tsv.bz2
bunzip2 toki_sentences.tsv.bz2
cut -f 3 toki_sentences.tsv | perl -MList::Util -e 'srand 0; print List::Util::shuffle <>' > cut.txt