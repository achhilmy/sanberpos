part of '../widget.dart';

class InputTexFieldstWidget extends StatelessWidget {
  const InputTexFieldstWidget(
      {super.key, this.title, this.subTitle, this.hintText, this.maxLinesval});
  final String? title;
  final String? subTitle;
  final String? hintText;
  final bool? maxLinesval;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toString(),
            style:
                titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 350,
            child: Text(
              subTitle.toString(),
              style:
                  titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          maxLinesval == true
              ? NormalInputWidget(hintText: hintText, maxLines: 5)
              : NormalInputWidget(hintText: hintText, maxLines: 1),
          const Divider()
        ],
      ),
    );
  }
}

class InputPhotoProduct extends StatelessWidget {
  const InputPhotoProduct(
      {super.key, this.title, this.subTitle, this.hintText, this.maxLinesval});
  final String? title;
  final String? subTitle;
  final String? hintText;
  final bool? maxLinesval;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toString(),
            style:
                titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 350,
            child: Text(
              subTitle.toString(),
              style:
                  titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload),
                      ElevatedButton(onPressed: () {}, child: const Text("Add Image"))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload),
                      ElevatedButton(onPressed: () {}, child: const Text("Add Image"))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload),
                      ElevatedButton(onPressed: () {}, child: const Text("Add Image"))
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
