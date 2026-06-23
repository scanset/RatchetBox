# Linker Tools Warning LNK4076

> invalid incremental status file 'filename'; linking nonincrementally

## Remarks

LINK cannot write to the incremental status (.ilk) file. Either `filename` is corrupt or it is not an incremental linking database. Remove the file and relink.