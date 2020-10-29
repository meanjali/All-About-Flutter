import 'package:flutter/material.dart';

class MainGridList extends StatelessWidget {
  List<_Photo> _photos() {
    return [
      _Photo(imageURL: 'https://cdn.pixabay.com/photo/2017/06/09/09/39/adler-2386314_960_720.jpg',
          title: 'Eagle',
          subtitle: 'Eagle subtitle'),
      _Photo(imageURL: 'https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg',
          title: 'Cute Dog',
          subtitle: 'cute cute'),
      _Photo(imageURL: 'https://cdn.pixabay.com/photo/2016/05/02/13/17/wildlife-1367217_960_720.jpg',
          title: 'deer',
          subtitle: 'looks kind'),
      _Photo(imageURL: 'https://cdn.pixabay.com/photo/2020/02/05/15/19/zoo-4821484_960_720.jpg',
          title: 'mongoose',
          subtitle: 'hug'),
      _Photo(imageURL: 'https://cdn.pixabay.com/photo/2012/10/06/22/18/horse-60153_960_720.jpg',
          title: 'Horse',
          subtitle: 'yummy'),
      _Photo(imageURL: 'https://cdn.pixabay.com/photo/2018/07/14/17/46/raccoon-3538081_960_720.jpg',
          title: 'Raccoon',
          subtitle: 'Boring'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            padding: const EdgeInsets.all(8),
            childAspectRatio: 1,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children:_photos().map<Widget>( (photo) {
              return _GridDemoPhotoItem(
                photo: photo,
              );
            }).toList()),
      ),
    );
  }
}

class _Photo {
  _Photo({
    this.imageURL,
    this.title,
    this.subtitle,
  });

  final String imageURL;
  final String title;
  final String subtitle;
}

class GridSubject extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text('Normal List',
            style: TextStyle(fontFamily: 'ConcertOne-Regular',
                fontSize: 24,fontWeight: FontWeight.bold)),
      );
  }
}

class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(text),
    );
  }
}

class _GridDemoPhotoItem extends StatelessWidget {
  _GridDemoPhotoItem({
    Key key,
    @required this.photo,
  }) : super(key: key);

  final _Photo photo;

  @override
  Widget build(BuildContext context) {
    final Widget image = Material(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: Image.network(photo.imageURL,
        fit: BoxFit.cover,
      ),
    );

    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(4)),
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: Colors.purple,
          title: _GridTitleText(photo.title),
          subtitle: _GridTitleText(photo.subtitle),
        ),
      ),
      child: image,
    );
  }}