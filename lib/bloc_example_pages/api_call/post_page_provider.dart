import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'post_page_bloc.dart';
import 'post_page_view.dart';

class PostPageProvider extends BlocProvider<PostPageBloc> {
  PostPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => PostPageBloc(context),
          child: const PostPageView(),
        );
}
