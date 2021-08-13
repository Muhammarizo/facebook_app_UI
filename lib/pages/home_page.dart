import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade800,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey.shade800,
              )),
        ],
      ),
      body: ListView(children: [
        // post create
        Container(
          height: 120,
          color: Colors.white,
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/user_5.jpeg'))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border:
                              Border.all(width: 1, color: Colors.grey.shade500),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey.shade700)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Live'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14),
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Photo'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14),
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Check in'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // post stories
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(vertical: 10),
          height: 200,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 10,
              ),
              makeStory(
                storyImage: 'images/story_5.jpeg',
                userImage: 'images/user_5.jpeg',
                userName: 'user Five',
              ),
              makeStory(
                storyImage: 'images/story_4.jpeg',
                userImage: 'images/user_4.jpeg',
                userName: 'user four',
              ),
              makeStory(
                storyImage: 'images/story_3.jpeg',
                userImage: 'images/user_3.jpeg',
                userName: 'user three',
              ),
              makeStory(
                storyImage: 'images/story_2.jpeg',
                userImage: 'images/user_2.jpeg',
                userName: 'user two',
              ),
              makeStory(
                storyImage: 'images/story_1.jpeg',
                userImage: 'images/user_1.jpeg',
                userName: 'user one',
              ),
            ],
          ),
        ),
        // post feed

        makeFeed(
          userName: 'User Two',
          userImage: 'images/user_2.jpeg',
          feedTime: '1 hr ago',
          feedText:
              'All the Lorem Ipsum generators on the Internet tend to repeat predefind.',
          feedImage: 'images/story_2.jpeg',
        ),
        makeFeed(
          userName: 'User Three',
          userImage: 'images/user_3.jpeg',
          feedTime: '1 hr ago',
          feedText:
              'All the Lorem Ipsum generators on the Internet tend to repeat predefind.',
          feedImage: 'images/story_3.jpeg',
        ),
        makeFeed(
          userName: 'User Four',
          userImage: 'images/user_4.jpeg',
          feedTime: '1 hr ago',
          feedText:
              'All the Lorem Ipsum generators on the Internet tend to repeat predefind.',
          feedImage: 'images/story_4.jpeg',
        ),
      ]),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          size: 30,
                          color: Colors.grey[600],
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  feedText,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15,
                      height: 1.5,
                      letterSpacing: .7),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          // $photo
          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(feedImage),
              fit: BoxFit.cover,
            )),
          ),

          //$likes
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2.5k",
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  ],
                ),
                Text(
                  '400 Comment',
                  style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // #like, comment, share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Comment',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Share',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Like',
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.favorite,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
