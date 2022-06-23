# YOLOX-tracking-docker


## 動作確認
```bash
# とりあえずdemoを動かす
git clone @github.com:tskawada/YOLOX-tracking-docker.git
cd YOLOX-tracking-docker
sudo docker build .
sudo docker run -v <host path>:<container path> -it <container id> bash
python tools/demo.py image -n yolox-s -c models/yolox_s.pth \
    --path assets/dog.jpg \
    --conf 0.25 \
    --nms 0.45 \
    --tsize 640 \
    --save_result \
    --device cpu
```