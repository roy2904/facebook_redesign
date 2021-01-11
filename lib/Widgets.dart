import 'package:flutter/material.dart';

Widget makeStory({image, userimage, title}) {
  return AspectRatio(
    aspectRatio: 1.6 / 2,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: AssetImage(userimage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}

Widget makeFeed({userImage, userName, feedText, feedTime, feedImage, liked}) {
  return Container(
    margin: EdgeInsets.only(bottom: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(feedTime, style: TextStyle(color: Colors.grey))
                  ],
                )
              ],
            ),
            IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[600],
                  size: 30,
                ),
                onPressed: () {})
          ],
        ),
        SizedBox(height: 20),
        Text(
          feedText,
          style: TextStyle(
            fontSize: 15,
            height: 1.5,
            letterSpacing: .7,
            color: Colors.grey[900],
          ),
        ),
        SizedBox(height: 20),
        feedImage!='' ?
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(feedImage),
              fit: BoxFit.cover,
            ),
          ),
        ) : Container(),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                makeLike(),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: makeLove(),
                ),
                Text(
                  '2.5k',
                  style: TextStyle(color: Colors.grey[800], fontSize: 15),
                ),
              ],
            ),
            Text(
              '600 Comments',
              style: TextStyle(color: Colors.grey[800], fontSize: 13),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            makeLikeButton(isActive: liked),
            makeCommentButton(),
            makeShareButton(),
          ],
        ),
      ],
    ),
  );
}

Widget makeLike() {
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: Center(
      child: Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 14,
      ),
    ),
  );
}

Widget makeLove() {
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      color: Colors.redAccent,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: Center(
      child: Icon(
        Icons.favorite,
        color: Colors.white,
        size: 14,
      ),
    ),
  );
}

Widget makeLikeButton({isActive}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.thumb_up,
            color: isActive ? Colors.blue : Colors.grey,
          ),
          SizedBox(width: 5),
          Text(
            'Like',
            style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
          ),
        ],
      ),
    ),
  );
}

Widget makeCommentButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.comment,
            color: Colors.grey,
          ),
          SizedBox(width: 5),
          Text(
            'Comment',
            style: TextStyle(color:Colors.grey),
          ),
        ],
      ),
    ),
  );
}

Widget makeShareButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.share,
            color: Colors.grey,
          ),
          SizedBox(width: 5),
          Text(
            'Share',
            style: TextStyle(color:Colors.grey),
          ),
        ],
      ),
    ),
  );
}
