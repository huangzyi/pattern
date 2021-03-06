#工厂模式
*实例化对象，用工厂方法代替new操作
*减少具体实例化时出的错

#单例模式
*只需要1个对象.
*无论调用多少次，整个应用程序中某个实例有且仅有一个
*例：数据库。

#观察者模式
*当一个对象状态发生改变时，依赖它的对象全部会收到通知，并自动更新
*应用场景:时常更新，一系列数据的变化。
         相同信息在不同目标中实现。

#迭代器模式
*在不了解内部实现的前提下，遍历一个聚合对象的内部元素。
 可以隐藏遍历模式的操作

#数据对象映射模式
*将对象和数据存储起来，对一个对象的操作会映射为对数据存储的操作
*用于实时更新数据

#策略模式
*将一组特定的行为和算法封装成类，以适应某些特定发上下文环境。
*针对对象的不同属性所显示的内容不同

#原型模式
先创建一个原型对象，然后通过clone原型对象创建新的对象，免去类创建的初始化操作
应用于大对象的创建

#适配器模式
*功能：可以将截然不同的函数接口封装成统一的API。
*应用：1. 数据mysql、mysqli、pdo模式统一成一致；
      2. 不同缓存函数统一。