/*
Navicat MySQL Data Transfer

Source Server         : booklib
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : testproject

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2024-06-17 20:15:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminId`),
  KEY `admUserId` (`userId`),
  CONSTRAINT `admUserId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', 'admin1');
INSERT INTO `admin` VALUES ('2', '2', 'admin2');
INSERT INTO `admin` VALUES ('3', '3', 'admin3');

-- ----------------------------
-- Table structure for admtostu
-- ----------------------------
DROP TABLE IF EXISTS `admtostu`;
CREATE TABLE `admtostu` (
  `adminId` varchar(255) NOT NULL,
  `stuId` varchar(255) NOT NULL,
  PRIMARY KEY (`adminId`,`stuId`),
  KEY `FK_ADMTOSTU_ADMTOSTU2_STUDENT` (`stuId`),
  CONSTRAINT `FK_ADMTOSTU_ADMTOSTU2_STUDENT` FOREIGN KEY (`stuId`) REFERENCES `student` (`stuId`),
  CONSTRAINT `FK_ADMTOSTU_ADMTOSTU_ADMIN` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admtostu
-- ----------------------------
INSERT INTO `admtostu` VALUES ('1', '1');
INSERT INTO `admtostu` VALUES ('2', '1');
INSERT INTO `admtostu` VALUES ('3', '1');
INSERT INTO `admtostu` VALUES ('1', '2');
INSERT INTO `admtostu` VALUES ('2', '2');
INSERT INTO `admtostu` VALUES ('3', '2');
INSERT INTO `admtostu` VALUES ('1', '3');
INSERT INTO `admtostu` VALUES ('2', '3');
INSERT INTO `admtostu` VALUES ('3', '3');

-- ----------------------------
-- Table structure for admtotea
-- ----------------------------
DROP TABLE IF EXISTS `admtotea`;
CREATE TABLE `admtotea` (
  `adminId` varchar(255) NOT NULL,
  `teaId` varchar(255) NOT NULL,
  PRIMARY KEY (`adminId`,`teaId`),
  KEY `FK_ADMTOTEA_ADMTOTEA2_TEACHER` (`teaId`),
  CONSTRAINT `FK_ADMTOTEA_ADMTOTEA2_TEACHER` FOREIGN KEY (`teaId`) REFERENCES `teacher` (`teaId`),
  CONSTRAINT `FK_ADMTOTEA_ADMTOTEA_ADMIN` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admtotea
-- ----------------------------
INSERT INTO `admtotea` VALUES ('1', '1');
INSERT INTO `admtotea` VALUES ('2', '1');
INSERT INTO `admtotea` VALUES ('3', '1');
INSERT INTO `admtotea` VALUES ('1', '2');
INSERT INTO `admtotea` VALUES ('2', '2');
INSERT INTO `admtotea` VALUES ('3', '2');
INSERT INTO `admtotea` VALUES ('1', '3');
INSERT INTO `admtotea` VALUES ('2', '3');
INSERT INTO `admtotea` VALUES ('3', '3');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `perId` varchar(255) NOT NULL,
  `perName` varchar(255) DEFAULT NULL,
  `perAction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`perId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'userManagement', '用户管理');
INSERT INTO `permission` VALUES ('10', 'testpreview', '测评预览');
INSERT INTO `permission` VALUES ('11', 'studentOnlineAssessment', '学生在线测评');
INSERT INTO `permission` VALUES ('12', 'automaticScoring', '自动评分');
INSERT INTO `permission` VALUES ('13', 'viewAssessmentReport', '查看测评报告');
INSERT INTO `permission` VALUES ('14', 'generateEvaluationReport', '生成测评报告');
INSERT INTO `permission` VALUES ('15', 'intelligentAnalysisOfEvaluationData', '测评数据智能分析');
INSERT INTO `permission` VALUES ('16', 'recommendedLearningResources', '推荐学习资源');
INSERT INTO `permission` VALUES ('17', 'generateStudentLearningProfiles', '生成学习档案');
INSERT INTO `permission` VALUES ('2', 'authorityManagement', '权限管理');
INSERT INTO `permission` VALUES ('3', 'questionBankManagement', '题库管理');
INSERT INTO `permission` VALUES ('4', 'questionsClassification', '试题分类');
INSERT INTO `permission` VALUES ('5', 'questionsDifficultySetting', '试题难度设置');
INSERT INTO `permission` VALUES ('6', 'questionsImportAndExport', '试题导入导出');
INSERT INTO `permission` VALUES ('7', 'createTest', '创建测评活动');
INSERT INTO `permission` VALUES ('8', 'randomTestComposition', '随机组卷');
INSERT INTO `permission` VALUES ('9', 'manualTestComposition', '人工组卷');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `queId` varchar(255) NOT NULL,
  `queType` varchar(255) DEFAULT NULL,
  `queMajor` varchar(255) DEFAULT NULL,
  `queTitle` varchar(255) DEFAULT NULL,
  `queAnswear` varchar(255) DEFAULT NULL,
  `queLevel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`queId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'TorF', 'computer', '【基本概念】一个进程可以调用创建原语create( )创建一个进程。', 'T', '1');
INSERT INTO `questions` VALUES ('10', 'TorF', 'computer', '【设备】字符设备和块设备的驱动设计有很大差异，但对于用户而言，它们都要使用文件系统的操作接口，如 open（），close（），read（），write（）等进行访问。', 'T', '1');
INSERT INTO `questions` VALUES ('11', 'TorF', 'computer', '【基本概念】Linux继承UNIX版本制定的规则，将Linux的版本分为内核版本和发行版本两类。', 'T', '1');
INSERT INTO `questions` VALUES ('12', 'TorF', 'computer', '【fork】fork调用的一个奇妙之处就是它仅仅被调用一次，却能够返回两次，它可能有三种不同的返回值：1、在父进程中，fork返回新创建子进程的进程ID；2、在子进程中，fork返回0；3、如果出现错误，fork返回一个负值。', 'T', '1');
INSERT INTO `questions` VALUES ('13', 'TorF', 'computer', '【共享内存】共享内存允许两个或多个进程共享一给定的存储区，因为数据不需要来回复制，所以是最快的一种进程间通信机制。', 'T', '1');
INSERT INTO `questions` VALUES ('14', 'TorF', 'computer', '【设备】在linux的/dev目录下，使用ls –l命令可以查看设备文件的信息。首字母c表示字符设备文件，b则表示块设备文件。第5列数字表示主设备号，第6列表示次设备号。', 'T', '1');
INSERT INTO `questions` VALUES ('15', 'TorF', 'computer', '【基本概念】Linux系统中的文件名不区分大小写。', 'F', '1');
INSERT INTO `questions` VALUES ('16', 'TorF', 'computer', '【基本概念】进程的所有信息对该进程的所有线程都是共享的，包括可执行的程序文本、程序的全局内存和堆内存、栈以及文件描述符。', 'T', '1');
INSERT INTO `questions` VALUES ('17', 'TorF', 'computer', '【fork】在Linux系统下，启动一个新的进程必须分配给它独立的地址空间，建立众多的数据表来维护它的代码段、堆栈段和数据段，这是一种\"昂贵\"的多任务工作方式。而运行于一个进程中的多个线程，它们彼此之间使用相同的地址空间，共享大部分数据，启动一个线程所花费的空间远远小于启动一个进程所花费的空间，而且，线程间彼此切换所需的时间也远远小于进程间切换所需要的时间。', 'T', '1');
INSERT INTO `questions` VALUES ('18', 'TorF', 'computer', '【管道】管道通信和消息队列都要求两个进程之间要有亲缘关系；但管道只能承载无格式的字节流，而消息队列是有格式的。', 'F', '1');
INSERT INTO `questions` VALUES ('19', 'TorF', 'computer', '【进程概念】exec把当前进程映像替换成新的进程文件，而且该新程序通常从main函数处开始执行。并赋予进程新的进程号。', 'T', '1');
INSERT INTO `questions` VALUES ('2', 'TorF', 'computer', '【管道】一般在一个进程中先用pipe创建管道，再由fork创建子进程，然后通过管道实现父子进程间的通信 。', 'T', '1');
INSERT INTO `questions` VALUES ('20', 'TorF', 'computer', '【基本概念】系统调用wait（）常常被用来处理父子进程间的同步问题。', 'T', '1');
INSERT INTO `questions` VALUES ('21', 'SingleC', 'computer', '【基本概念】Linux命令的一般格式是：A.命令名 [选项] [参数]B.[选项] [参数] 命令名C.[参数] [选项] 命令名D.[命令名] [选项] [参数]\r\n', 'A', '1');
INSERT INTO `questions` VALUES ('22', 'SingleC', 'computer', '【基本概念】系统调用的目的是A.请求系统服务B.终止系统服务C.申请系统资源D.释放系统资源', 'A', '1');
INSERT INTO `questions` VALUES ('23', 'SingleC', 'computer', '【基本概念】系统调用是由操作系统提供的内部调用，它（ ）。A.直接通过键盘交互方式使用B.只能通过用户程序间接使用C.是命令接口中的命令使用D.与系统的命令一样', 'B', '1');
INSERT INTO `questions` VALUES ('24', 'SingleC', 'computer', '【基本概念】用户向操作系统提出服务请求一般有两种方式：终端命令和( )。A.系统调用B.高级语言C.宏命令D.汇编语言', 'A', '1');
INSERT INTO `questions` VALUES ('25', 'SingleC', 'computer', '【信号量】操作系统中提及的信号量（semaphore）是（ ）。\r\n\r\n\r\nA.\r\n进程调度分派器\r\n\r\n\r\nB.\r\n代码段\r\n\r\n\r\nC.\r\n进程同步机制\r\n\r\n\r\nD.\r\n【信号量】操作系统中提及的信号量（semaphore）是（ ）。A.进程调度分派器B.代码段C.进程同步机制D.数据段\r\n【信号量】操作系统中提及的信号量（semaphore）是（ ）。A.进程调度分派器B.代码段C.进程同步机制D.数据段\r\n', 'C', '1');
INSERT INTO `questions` VALUES ('26', 'SingleC', 'computer', '【管道】下列关于管道（Pipe）通信的叙述中，正确的是（ ）。A.一个管道可实现双向数据传输B.管道的容量仅受磁盘容量大小限制C.进程对管道进行读操作和写操作都可能被阻塞D.一个管道只能有一个读进程或一个写进程对其操作', 'C', '1');
INSERT INTO `questions` VALUES ('27', 'SingleC', 'computer', '【管道】Linux的文件类型众多，甚至包含一些特殊文件。但是，( )不属于Linux的文件。A.pipeB.shell命令“zcat thread.c.gz | grep main -”中的符号“|”C.第一块硬盘的逻辑名D.signal', 'D', '1');
INSERT INTO `questions` VALUES ('28', 'SingleC', 'computer', '【常用命令】Linux的ipcs命令，用于显示system v的各种IPC机制的状态。但是，它不提供( ) 的状态。A.Semaphore arraysB.Message queuesC.pipeD.Shared memory segments', 'C', '1');
INSERT INTO `questions` VALUES ('29', 'SingleC', 'computer', '【fork】父进程用i=fork()函数创建子进程后，子进程返回的i值是（ ） 。A.0B.1C.子进程的pid值D.没有返回值', 'A', '1');
INSERT INTO `questions` VALUES ('3', 'TorF', 'computer', '【进程概念】exec把当前进程映像替换成新的进程文件，而且该新程序通常从main函数处开始执行。进程号不改变。', 'T', '1');
INSERT INTO `questions` VALUES ('30', 'SingleC', 'computer', '【基本概念】下面的哪一个结构是可以被称为进程控制块PCB (Process Control Block)的最重要结构：A.struct mm_structB.struct pcbC.struct task_structD.struct thread_info', 'C', '1');
INSERT INTO `questions` VALUES ('31', 'SingleC', 'computer', '在Linux内核中，进程标识符PID为0的进程是？A.空闲进程B.init进程 或systemd进程C.交换进程D.守护进程', 'A', '1');
INSERT INTO `questions` VALUES ('32', 'SingleC', 'computer', '在Linux内核中，进程标识符PID为1的进程是？A.空闲进程B.init进程 或systemd进程C.交换进程D.守护进程', 'B', '1');
INSERT INTO `questions` VALUES ('33', 'SingleC', 'computer', '在 bash shell 环境下，当一个命令正在执行时，按下 Ctrl-z 键后会( )。A.将正在执行的进程转入后台运行B.给正在执行的进程发送暂停执行的信号并使之挂起C.中止正在执行的进程D.注销当前用户', 'B', '1');
INSERT INTO `questions` VALUES ('34', 'SingleC', 'computer', '下述哪个命令可显示所有运行进程列表？A.psB.ps axC.getprocessD.down', 'B', '1');
INSERT INTO `questions` VALUES ('35', 'SingleC', 'computer', 'Linux内核官方发布网站。A.Linus TorvaldsB.www.kernel.orgC.www.gnu.orgD.www.github.com', 'B', '1');
INSERT INTO `questions` VALUES ('36', 'SingleC', 'computer', '下列哪个命令可以用来查看Linux kernel版本信息？A.whereis kernelB.ls kernelC.kernelD.uname', 'D', '1');
INSERT INTO `questions` VALUES ('37', 'SingleC', 'computer', '在Linux环境执行“gcc hello.c”，将产生__ 。A.hello.oB.helloC.a.outD.hello.exe', 'B', '1');
INSERT INTO `questions` VALUES ('38', 'SingleC', 'computer', '【fork】父进程用i=fork()函数创建子进程后，父进程返回的i值是（ ） 。A.0B.1C.子进程的pid值D.没有返回值', 'C', '1');
INSERT INTO `questions` VALUES ('39', 'SingleC', 'computer', '【常用命令】下述哪个命令实现在运行内核中装入可装载模块?A.insmodB.loadmodC.lsmodD.setmod', 'A', '1');
INSERT INTO `questions` VALUES ('4', 'TorF', 'computer', '【fork】调用fork（）之前，父进程打开的文件描述符，在子进程中即便打开，指向的也是新的同名文件表项。', 'F', '1');
INSERT INTO `questions` VALUES ('40', 'SingleC', 'computer', '【常用命令】设备驱动模块实验中，我们使用 printk显示模块信息。下述哪个命令可查看这些信息?A.cat /log/messagesB.dmesgC.print messagesD.cat messages', 'B', '1');
INSERT INTO `questions` VALUES ('41', 'MultipleC', 'computer', '【常用命令】ps 命令的哪些选项和线程有关：A.-aB.-LC.-eD.-lE.-mF.H', 'B&F', '1');
INSERT INTO `questions` VALUES ('42', 'MultipleC', 'computer', '【signal】下列哪些函数涉及发送信号 :A.kill()B.pause()C.raise()D.sigaction()E.sigqueue()F.alarm()G.signal()', 'A&C&E', '1');
INSERT INTO `questions` VALUES ('43', 'MultipleC', 'computer', '【线程】下述选项中，哪些是单个线程的退出方式，即：单个线程在不终止整个进程的情况下停止它的控制流。A.线程只是从启动例程中返回，返回值是线程的退出码B.线程调用returnC.线程调用pthread_exitD.线程调用exitE.线程可以被同一进程中的其他线程取消', 'A&C&E', '1');
INSERT INTO `questions` VALUES ('44', 'MultipleC', 'computer', '【管道】管道拥有如下特点：A.无名管道只允许具有亲缘关系的进程间通信，如父子进程间的通信。B.管道只允许单向通信。C.管道内部保证同步机制，从而保证访问数据的一致性。D.面向字节流和结构数据均可。E.管道随进程，进程在管道在，进程消失管道对应的端口也关闭，两个进程都消失管道也消失。', 'A&B&C&D&E', '1');
INSERT INTO `questions` VALUES ('45', 'MultipleC', 'computer', '对于例如字符设备文件的内核模块，应该包含哪些部分?A.头文件部分B.函数定义部分C.模块的初始化和退出函数D.module_init 和 module_exit', 'A&B&C&D', '1');
INSERT INTO `questions` VALUES ('46', 'Essay', 'political', '什么是民主？', '民主是一种政治制度，其中权力来源于人民，通常通过选举来实现。', '1');
INSERT INTO `questions` VALUES ('47', 'Essay', 'political', '什么是联邦制？', '联邦制是一种政治体制，其中权力在中央政府和地方政府之间分配。', '1');
INSERT INTO `questions` VALUES ('48', 'Essay', 'political', '什么是宪法？', '宪法是一个国家的根本法律，规定了政府的结构、权力和公民的基本权利。', '1');
INSERT INTO `questions` VALUES ('49', 'Essay', 'political', '什么是立法机关？', '立法机关是政府的一个分支，负责制定法律。', '1');
INSERT INTO `questions` VALUES ('5', 'TorF', 'computer', '【进程概念】wait函数不仅被用来处理父子进程间的同步问题，还可处理非亲缘关系的进程间的同步问题。', 'F', '1');
INSERT INTO `questions` VALUES ('50', 'Essay', 'political', '什么是行政分支？', '行政分支是政府的一个分支，负责执行法律和管理国家的日常事务。', '1');
INSERT INTO `questions` VALUES ('51', 'Essay', 'political', '什么是司法分支？', '司法分支是政府的一个分支，负责解释法律并裁决法律争议。', '1');
INSERT INTO `questions` VALUES ('52', 'Essay', 'political', '什么是两党制？', '两党制是指在一个国家中，通常只有两个主要政党竞争政治权力。', '1');
INSERT INTO `questions` VALUES ('53', 'Essay', 'political', '什么是多党制？', '多党制是指一个国家中有多个政党，它们都有机会参与政治竞争。', '1');
INSERT INTO `questions` VALUES ('54', 'Essay', 'political', '什么是议会制？', '议会制是一种政府形式，其中立法机关的领导者通常是政府的首脑。', '1');
INSERT INTO `questions` VALUES ('55', 'Essay', 'political', '什么是总统制？', '总统制是一种政府形式，其中总统是政府的首脑，并且通常独立于立法机关选举产生。', '1');
INSERT INTO `questions` VALUES ('56', 'Essay', 'political', '什么是选举？', '选举是公民通过投票选择政府官员或决定政策的过程。', '1');
INSERT INTO `questions` VALUES ('57', 'Essay', 'political', '什么是直接民主？', '直接民主是指公民直接参与决策过程，而不是通过代表。', '1');
INSERT INTO `questions` VALUES ('58', 'Essay', 'political', '什么是间接民主？', '间接民主是指公民通过选举代表来参与决策过程。', '1');
INSERT INTO `questions` VALUES ('59', 'Essay', 'political', '什么是政治意识形态？', '政治意识形态是一组政治信仰和价值观，影响个人或团体的政治行为。', '1');
INSERT INTO `questions` VALUES ('6', 'TorF', 'computer', '【基本概念】写时复制(copy-on-write)是存储管理节省物理主存(页框)的一种页面级优化技术，能减少主存页面内容的复制操作次数，但不能减少相同内容页面在主存的副本数目。', 'T', '1');
INSERT INTO `questions` VALUES ('60', 'Essay', 'political', '什么是民族主义？', '民族主义是一种政治意识形态，强调一个民族的共同身份和主权。', '1');
INSERT INTO `questions` VALUES ('61', 'Essay', 'political', '什么是社会主义？', '社会主义是一种经济和政治理论，主张生产资料的公有制和分配的平等。', '1');
INSERT INTO `questions` VALUES ('62', 'Essay', 'political', '什么是资本主义？', '资本主义是一种经济系统，其中生产资料主要由私人拥有，并通过市场机制进行分配。', '1');
INSERT INTO `questions` VALUES ('63', 'Essay', 'political', '什么是共产主义？', '共产主义是一种政治和社会理论，主张消除阶级差异，实现生产资料的公有制。', '1');
INSERT INTO `questions` VALUES ('64', 'Essay', 'political', '什么是保守主义？', '保守主义是一种政治哲学，强调传统、稳定的社会秩序和谨慎的变革。', '1');
INSERT INTO `questions` VALUES ('65', 'Essay', 'political', '什么是自由主义？', '自由主义是一种政治哲学，强调个人自由、平等权利和法治。', '1');
INSERT INTO `questions` VALUES ('66', 'Filling', 'math', '3\r\n+\r\n4\r\n=\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n_\r\n3+4=', '7', '1');
INSERT INTO `questions` VALUES ('67', 'Filling', 'math', '5-2=', '3', '1');
INSERT INTO `questions` VALUES ('68', 'Filling', 'math', '7*6=', '42', '1');
INSERT INTO `questions` VALUES ('69', 'Filling', 'math', '8/2=', '4', '1');
INSERT INTO `questions` VALUES ('7', 'TorF', 'computer', '【信号】由signal（）注册的信号只是用来通知某进程发生了什么事件，并不给该进程传递任何数据。', 'T', '1');
INSERT INTO `questions` VALUES ('70', 'Filling', 'math', '9%4=', '1', '1');
INSERT INTO `questions` VALUES ('71', 'Filling', 'math', '2^3=', '8', '1');
INSERT INTO `questions` VALUES ('72', 'Filling', 'math', '√16', '4', '1');
INSERT INTO `questions` VALUES ('73', 'Filling', 'math', 'π约等于', '3.14', '1');
INSERT INTO `questions` VALUES ('74', 'Filling', 'math', '1公里等于', '1000米', '1');
INSERT INTO `questions` VALUES ('75', 'Filling', 'math', '1升等于', '1000毫升', '1');
INSERT INTO `questions` VALUES ('76', 'Filling', 'math', '1年约等于', '365天', '1');
INSERT INTO `questions` VALUES ('77', 'Filling', 'math', '1英尺等于', '12英寸', '1');
INSERT INTO `questions` VALUES ('78', 'Filling', 'math', '1立方米等于', '1000000立方厘米', '1');
INSERT INTO `questions` VALUES ('79', 'Filling', 'math', '1千克等于', '1000克', '1');
INSERT INTO `questions` VALUES ('8', 'TorF', 'computer', '【共享内存】Linux内核通过引用计数技术来管理共享内存生命周期。', 'T', '1');
INSERT INTO `questions` VALUES ('80', 'Filling', 'math', '1度电等于', '1千瓦时', '1');
INSERT INTO `questions` VALUES ('81', 'Filling', 'math', '1微米等于', '1000纳米', '1');
INSERT INTO `questions` VALUES ('82', 'Filling', 'math', '5*6', '30', '1');
INSERT INTO `questions` VALUES ('83', 'Filling', 'math', '99-87', '12', '1');
INSERT INTO `questions` VALUES ('84', 'Filling', 'math', '当x趋近于0时，lime^x等于多少', '1', '1');
INSERT INTO `questions` VALUES ('85', 'Filling', 'chinese', '《滕王阁序》是唐代文学家王勃的代表作，其中“落霞与孤鹜齐飞”下一句是', '秋水共长天一色', '1');
INSERT INTO `questions` VALUES ('86', 'Programming', 'computer', '编写一个C程序，输入两个整数，计算它们的和并输出结果。', '#include <stdio.h>int main() {int num1, num2, sum;printf(\"请输入两个整数：\");scanf(\"%d %d\", &num1, &num2);sum = num1 + num2;printf(\"它们的和是：%d\\n\", sum);return 0;}', '1');
INSERT INTO `questions` VALUES ('87', 'Programming', 'computer', '创建一个C程序，要求用户输入他们的年龄，然后输出用户5年后的年龄。', '#include <stdio.h>int main() {int age;printf(\"请输入你的年龄：\");scanf(\"%d\", &age);printf(\"5年后你的年龄将是：%d\\n\", age + 5);return 0;}', '1');
INSERT INTO `questions` VALUES ('88', 'Programming', 'computer', '编写一个C程序，计算并输出1到100的整数之和。', '#include <stdio.h>int main() {int i, sum = 0;for(i = 1; i <= 100; i++) {sum += i;}printf(\"1到100的整数之和是：%d\\n\", sum);return 0;}', '1');
INSERT INTO `questions` VALUES ('89', 'Programming', 'computer', '设计一个C程序，输入一个华氏温度，将其转换为摄氏温度并输出结果。', '#include <stdio.h>int main() {float fahrenheit, celsius;printf(\"请输入华氏温度：\");scanf(\"%f\", &fahrenheit);celsius = (fahrenheit - 32) * 5 / 9;printf(\"对应的摄氏温度是：%.2f\\n\", celsius);return 0;}', '1');
INSERT INTO `questions` VALUES ('9', 'TorF', 'computer', '【共享内存】如果在代码中没有使用IPC_RMID命令手动删除共享内存，则共享内存并不会随着程序的终止而自动清理。', 'T', '1');
INSERT INTO `questions` VALUES ('90', 'Programming', 'computer', '编写一个C程序，输出从1到用户指定数字的整数序列（不包括该数字）。', '#include <stdio.h>int main() {int num, i;printf(\"请输入一个数字：\");scanf(\"%d\", &num);printf(\"整数序列是：\");for(i = 1; i < num; i++) {printf(\"%d \", i);}printf(\"\\n\");return 0;}', '1');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `stuId` varchar(255) NOT NULL,
  `teaId` varchar(255) NOT NULL,
  `testId` varchar(255) NOT NULL,
  `reportId` varchar(255) NOT NULL,
  `reportGrade` int(11) DEFAULT NULL,
  `reportContent` varchar(255) DEFAULT NULL,
  `reportErrors` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stuId`,`teaId`,`testId`,`reportId`),
  KEY `FK_REPORT_TESTTOREP_TEST` (`teaId`,`testId`),
  CONSTRAINT `FK_REPORT_STUHAVERE_STUDENT` FOREIGN KEY (`stuId`) REFERENCES `student` (`stuId`),
  CONSTRAINT `FK_REPORT_TESTTOREP_TEST` FOREIGN KEY (`teaId`, `testId`) REFERENCES `test` (`teaId`, `testId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('1', '1', '1', '1', '1', '', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` varchar(255) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `roleStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '0');
INSERT INTO `role` VALUES ('2', 'teacher', '0');
INSERT INTO `role` VALUES ('3', 'student', '0');

-- ----------------------------
-- Table structure for rolenpermission
-- ----------------------------
DROP TABLE IF EXISTS `rolenpermission`;
CREATE TABLE `rolenpermission` (
  `roleId` varchar(255) NOT NULL,
  `perId` varchar(255) NOT NULL,
  `roleNPermissionId` varchar(255) NOT NULL,
  PRIMARY KEY (`roleId`,`perId`,`roleNPermissionId`),
  KEY `FK_ROLENPER_TOPERMISS_PERMISSI` (`perId`),
  CONSTRAINT `FK_ROLENPER_ROLETO_ROLE` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`),
  CONSTRAINT `FK_ROLENPER_TOPERMISS_PERMISSI` FOREIGN KEY (`perId`) REFERENCES `permission` (`perId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolenpermission
-- ----------------------------
INSERT INTO `rolenpermission` VALUES ('1', '1', '1');
INSERT INTO `rolenpermission` VALUES ('1', '10', '10');
INSERT INTO `rolenpermission` VALUES ('2', '10', '25');
INSERT INTO `rolenpermission` VALUES ('3', '10', '33');
INSERT INTO `rolenpermission` VALUES ('1', '11', '11');
INSERT INTO `rolenpermission` VALUES ('2', '11', '26');
INSERT INTO `rolenpermission` VALUES ('3', '11', '34');
INSERT INTO `rolenpermission` VALUES ('1', '12', '12');
INSERT INTO `rolenpermission` VALUES ('2', '12', '27');
INSERT INTO `rolenpermission` VALUES ('1', '13', '13');
INSERT INTO `rolenpermission` VALUES ('2', '13', '28');
INSERT INTO `rolenpermission` VALUES ('3', '13', '35');
INSERT INTO `rolenpermission` VALUES ('1', '14', '14');
INSERT INTO `rolenpermission` VALUES ('2', '14', '29');
INSERT INTO `rolenpermission` VALUES ('3', '14', '36');
INSERT INTO `rolenpermission` VALUES ('1', '15', '15');
INSERT INTO `rolenpermission` VALUES ('2', '15', '30');
INSERT INTO `rolenpermission` VALUES ('3', '15', '37');
INSERT INTO `rolenpermission` VALUES ('1', '16', '16');
INSERT INTO `rolenpermission` VALUES ('2', '16', '31');
INSERT INTO `rolenpermission` VALUES ('3', '16', '38');
INSERT INTO `rolenpermission` VALUES ('1', '17', '17');
INSERT INTO `rolenpermission` VALUES ('2', '17', '32');
INSERT INTO `rolenpermission` VALUES ('3', '17', '39');
INSERT INTO `rolenpermission` VALUES ('1', '2', '2');
INSERT INTO `rolenpermission` VALUES ('1', '3', '3');
INSERT INTO `rolenpermission` VALUES ('2', '3', '18');
INSERT INTO `rolenpermission` VALUES ('1', '4', '4');
INSERT INTO `rolenpermission` VALUES ('2', '4', '19');
INSERT INTO `rolenpermission` VALUES ('1', '5', '5');
INSERT INTO `rolenpermission` VALUES ('2', '5', '20');
INSERT INTO `rolenpermission` VALUES ('1', '6', '6');
INSERT INTO `rolenpermission` VALUES ('2', '6', '21');
INSERT INTO `rolenpermission` VALUES ('1', '7', '7');
INSERT INTO `rolenpermission` VALUES ('2', '7', '22');
INSERT INTO `rolenpermission` VALUES ('1', '8', '8');
INSERT INTO `rolenpermission` VALUES ('2', '8', '23');
INSERT INTO `rolenpermission` VALUES ('1', '9', '9');
INSERT INTO `rolenpermission` VALUES ('2', '9', '24');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `stuName` varchar(255) DEFAULT NULL,
  `stuPhone` varchar(255) DEFAULT NULL,
  `stuAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stuId`),
  KEY `stuUserId` (`userId`),
  CONSTRAINT `stuUserId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '7', 'student1', '18158532256', 'St.1');
INSERT INTO `student` VALUES ('2', '8', 'student2', '18158532256', 'St.1');
INSERT INTO `student` VALUES ('3', '9', 'student3', '18158532256', 'St.1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teaId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teaName` varchar(255) DEFAULT NULL,
  `teaPhone` varchar(255) DEFAULT NULL,
  `teaAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teaId`),
  KEY `userId` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '4', 'teacher1', '18158532256', 'St.1');
INSERT INTO `teacher` VALUES ('2', '5', 'teacher2', '18158532256', 'St.1');
INSERT INTO `teacher` VALUES ('3', '6', 'teacher3', '18158532256', 'St.1');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `teaId` varchar(255) NOT NULL,
  `testId` varchar(255) NOT NULL,
  `testName` varchar(255) DEFAULT NULL,
  `testStarttime` datetime DEFAULT NULL,
  `testEndtime` datetime DEFAULT NULL,
  `testScope` varchar(255) DEFAULT NULL,
  `testContent` varchar(255) DEFAULT NULL,
  `testExtra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teaId`,`testId`),
  CONSTRAINT `FK_TEST_TEADESIGN_TEACHER` FOREIGN KEY (`teaId`) REFERENCES `teacher` (`teaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '1', 'test1', '2024-06-01 00:00:10', '2024-07-01 00:00:27', 'All', '', null);

-- ----------------------------
-- Table structure for testtoquestion
-- ----------------------------
DROP TABLE IF EXISTS `testtoquestion`;
CREATE TABLE `testtoquestion` (
  `teaId` varchar(255) NOT NULL,
  `testId` varchar(255) NOT NULL,
  `queId` varchar(255) NOT NULL,
  PRIMARY KEY (`teaId`,`testId`,`queId`),
  KEY `FK_TESTTOQU_TESTTOQUE_QUESTION` (`queId`),
  CONSTRAINT `FK_TESTTOQU_TESTTOQUE_QUESTION` FOREIGN KEY (`queId`) REFERENCES `questions` (`queId`),
  CONSTRAINT `FK_TESTTOQU_TESTTOQUE_TEST` FOREIGN KEY (`teaId`, `testId`) REFERENCES `test` (`teaId`, `testId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testtoquestion
-- ----------------------------
INSERT INTO `testtoquestion` VALUES ('1', '1', '1');
INSERT INTO `testtoquestion` VALUES ('1', '1', '10');
INSERT INTO `testtoquestion` VALUES ('1', '1', '2');
INSERT INTO `testtoquestion` VALUES ('1', '1', '3');
INSERT INTO `testtoquestion` VALUES ('1', '1', '4');
INSERT INTO `testtoquestion` VALUES ('1', '1', '5');
INSERT INTO `testtoquestion` VALUES ('1', '1', '6');
INSERT INTO `testtoquestion` VALUES ('1', '1', '7');
INSERT INTO `testtoquestion` VALUES ('1', '1', '8');
INSERT INTO `testtoquestion` VALUES ('1', '1', '9');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` varchar(255) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `userPwd` varchar(255) DEFAULT NULL,
  `userStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'user1', '123456', '0');
INSERT INTO `user` VALUES ('10', 'Jane Doe', 'securepassword123', '0');
INSERT INTO `user` VALUES ('2', 'user2', '123456', '0');
INSERT INTO `user` VALUES ('3', 'user3', '123456', '0');
INSERT INTO `user` VALUES ('4', 'user4', '123456', '0');
INSERT INTO `user` VALUES ('5', 'user5', '123456', '0');
INSERT INTO `user` VALUES ('6', 'user6', '123456', '0');
INSERT INTO `user` VALUES ('7', 'user7', '123456', '0');
INSERT INTO `user` VALUES ('8', 'user8', '123456', '0');
INSERT INTO `user` VALUES ('9', 'user9', '123456', '0');

-- ----------------------------
-- Table structure for usernrole
-- ----------------------------
DROP TABLE IF EXISTS `usernrole`;
CREATE TABLE `usernrole` (
  `userId` varchar(255) NOT NULL,
  `roleId` varchar(255) NOT NULL,
  `userNRoleId` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`,`userNRoleId`),
  KEY `FK_USERNROL_TOROLE_ROLE` (`roleId`),
  CONSTRAINT `FK_USERNROL_TOROLE_ROLE` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`),
  CONSTRAINT `FK_USERNROL_USERTO_USER` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usernrole
-- ----------------------------
INSERT INTO `usernrole` VALUES ('1', '1', '1');
INSERT INTO `usernrole` VALUES ('2', '1', '2');
INSERT INTO `usernrole` VALUES ('3', '1', '3');
INSERT INTO `usernrole` VALUES ('4', '2', '4');
INSERT INTO `usernrole` VALUES ('5', '2', '5');
INSERT INTO `usernrole` VALUES ('6', '2', '6');
INSERT INTO `usernrole` VALUES ('7', '3', '7');
INSERT INTO `usernrole` VALUES ('8', '3', '8');
INSERT INTO `usernrole` VALUES ('9', '3', '9');
