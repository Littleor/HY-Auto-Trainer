import time

# 这是一个测试文件
if __name__ == '__main__':
    for i in range(20):
        time.sleep(1)
        print(f"模拟训练到了第{i}步")
    print("训练完成～ 现在应该进行 OSS 上传后关机了")
