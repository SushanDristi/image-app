import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_app/base/api/api_const.dart';
import 'package:image_app/navigation/app_router.gr.dart';
import 'package:image_app/presentation/home/provider/home_notifier.dart';
import 'package:image_app/presentation/provider/image_provider.dart';
import 'package:image_app/presentation/widget/image_widget.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        ref.read(homeNotifierProvider.notifier).getImages();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final images = ref.watch(homeNotifierProvider);
    final searchQuery = ref.watch(searchQueryProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                    ),
                    onChanged: (text) {
                      ref.read(searchQueryProvider.notifier).state =
                          text.trim();
                      if (text.isEmpty) {
                        ref.read(homeNotifierProvider.notifier).resetData();
                      }
                    },
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  final query = ref.read(searchQueryProvider);
                  print("this is query $query");
                  if (query.isNotEmpty) {
                    Map<String, dynamic> data = {
                      "key": ApiConst.apiKey,
                      "q": query,
                      "image_type": "photo",
                    };
                    ref
                        .read(homeNotifierProvider.notifier)
                        .getImages(paramsData: data);
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  context.router.push(FavouriteScreen());
                },
              ),
            ],
          ),
        ),
      ),
      body:
          searchQuery.isEmpty
              ? const Center(child: Text("Type something and press search"))
              : images.when(
                data:
                    (images) =>
                        searchQuery.isEmpty || images == null
                            ? const Center(
                              child: Text("Type something and press search"),
                            )
                            : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridView.builder(
                                controller: scrollController,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 8.0,
                                      mainAxisSpacing: 8.0,
                                      childAspectRatio: 0.75,
                                    ),
                                itemCount: images.hits.length,
                                itemBuilder: (context, index) {
                                  final image = images.hits[index];
                                  return ImageWidget(image: image!);
                                },
                              ),
                            ),
                loading:
                    () => const Center(child: CupertinoActivityIndicator()),
                error: (e, _) => Center(child: Text('Error: $e')),
              ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

