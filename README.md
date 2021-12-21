[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-f059dc9a6f8d3a56e377f745f24479a46679e63a5d9fe6f495e02850cd0d8118.svg)](https://classroom.github.com/online_ide?assignment_repo_id=6614820&assignment_repo_type=AssignmentRepo)

# OneDayHackathon

## ToDo:
- 运用所学知识，构建一个自己的Album App
  -  可通过摄像头拍照/加载iOS原生相册App照片的方式添加照片到Album App
  -  加入照片时，利用提供的snacks模型(snacks数据集20分类)进行类型识别，并做**标示**
  -  可浏览图片(Collection View/Table View选1即可)
  -  按**标示**的类别分类照片，用TableView展示类别信息，点击类别，跳转到下一个view，浏览该类别下的所有图片
  -  点击图片，跳转到下一个页面，显示单张图片


## 切记：录屏展示效果

### 基本的软件设计

- 主页面是一个tableview，分为20行，每行对应一个类别
- tableview右上角保留一个 `+` 作为添加照片的选项
- 添加照片之后对类别进行分类, 并存储到对应的类别当中
- 点击对应的行, 跳转到一个collectionview展示图片
- 点击图片跳转到展示单一张图片的view
- 点击图片换新

### 进一步可以实现的功能

- 添加照片之后反馈分类结果, 这可以通过 text 提示实现; 对于分类不准确的结果, 可以由用户进行修改
- 增加删除照片的功能

### 基本的实现思路

- 三个view: tableview, collectionview, 单张图片的imageview
- tableview, collectionview只需要实现点击跳转的功能, 通过segue实现, 参照iw02实现
- 图片的点击增加不需要使用delegate, 直接使用iw04的实现思路
- 点击图片换新, 需要使用action

### 进一步的细节实现

- 先制作tableview, 对原型cell定制
  - tableview要embed到navigationController之中
  - 只需要显示类别名称即可
  - cell类型可以使用最原始的
  - cell需要和collectionview通过segue连接
  - 右上角保留 `+` 添加图片
  - 图片用一个 `dict: strinig->array` 保存
  - 添加后的图片通过mlmodel分类
  - 根据分类结果添加到对应的类别之中
  - 从cell向collectionview转移时候需要prepare
  - prepare的时候要添加图片到collectionview之中, 要复制图片集到collectionview中
- 制作collectionview
  - 不太熟练, 仿照tableview+google
  - collectionview中的图片点击后要可以展示单一张图片
  - 转移的手一样需要prepare复制图片集
- 制作imageview
  - 对应图片集展示
  - 点击切换

### 工程步骤

- 先不要collectionview, 直接遍历展示
