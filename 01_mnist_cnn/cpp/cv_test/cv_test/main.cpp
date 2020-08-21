//OpenCV版本3.0.0

#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

// 使用标准的cv库
using namespace cv;

int main( )
{
  // 读取源图像并转化为灰度图像
  Mat srcImage = imread("../person.jpg");
  // 判断文件是否读入正确
  if( !srcImage.data )
      return 1;
  // 图像显示
  imshow("srcImage", srcImage);
  // 等待键盘键入
  waitKey(10);

  while(1);

  return 0;
}
