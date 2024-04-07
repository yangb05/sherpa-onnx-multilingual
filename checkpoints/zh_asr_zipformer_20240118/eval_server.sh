export CUDA_VISIBLE_DEVICES=7
python ../../python-api-examples/streaming_server.py \
  --encoder ./encoder-epoch-21-avg-4-chunk-16-left-128.onnx \
  --decoder ./decoder-epoch-21-avg-4-chunk-16-left-128.onnx \
  --joiner ./joiner-epoch-21-avg-4-chunk-16-left-128.onnx \
  --use-endpoint 0 \
  --tokens ./tokens.txt \
  --doc-root ../../python-api-examples/web \
  --port 50181 \
  --provider cuda \
  --rule3-min-utterance-length 31