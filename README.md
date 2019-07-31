这个项目来自[brandon-rhodes/fopnp](https://github.com/brandon-rhodes/fopnp#readme)

使用Docker构建了一个模拟现实生活的网络拓扑，包括常见的家庭局域网（h1、h2、h3和h4）和公网。

通过这个playground可以学习Docker网络和计算机网络

网络拓扑如下：

<img src="https://raw.githubusercontent.com/brandon-rhodes/fopnp/m/diagrams/playground.png">



创建Docker镜像：

`$ ./build.sh`


运行：

`$ ./launch.sh`


停止：

`$ ./stop.sh`

试验：

- ssh登录h1

  `ssh h1 -F ssh-config`

- 访问http://www.example.com/

  `curl http://www.example.com/`

- traceroute

  ```shell
  root@h1:~# traceroute www.example.com
  traceroute to www.example.com (10.130.1.4), 30 hops max, 60 byte packets
   1  192.168.1.1 (192.168.1.1)  0.852 ms  0.783 ms  0.747 ms
   2  isp (10.25.1.1)  0.655 ms  0.599 ms  0.573 ms
   3  backbone (10.1.1.1)  0.547 ms  0.497 ms  0.468 ms
   4  example.com (10.130.1.1)  0.429 ms  0.322 ms  0.275 ms
   5  www.example.com (10.130.1.4)  0.234 ms  0.153 ms  0.091 ms
  ```
