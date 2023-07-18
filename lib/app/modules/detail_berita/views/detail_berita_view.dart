import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siaga_ntb/constant.dart';

import '../controllers/detail_berita_controller.dart';
import '../widgets/custom_widgets.dart';

class DetailBeritaView extends GetView<DetailBeritaController> {
  const DetailBeritaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomWidgetsDetailBerita(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          // fit: FlexFit.loose,
                          child: Text('Cuaca NTB 22/05/2023 sampai 23/05/2023',
                              style: HeadingStyle3),
                        ),
                        IconButton(
                          splashRadius: 10,
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage(
                              'assets/icons_3/share.png',
                            ),
                            color: ColorConstants.OrangeCo,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Tortor facilisis ullamcorper nullam nullam ultrices placerat scelerisque facilisis urna.'
                    'Venenatis at non volutpat integer nullam sit. Felis lacus nibh semper aliquam mauris sed. Rhoncus imperdiet sed urna tellus'
                    'Diam velit nisi risus in elit nunc ac. Pellentesque non posuere lorem orci. Sapien dictumst netus lobortis sem semper eu nisi tellus.'
                    'Elit a eu dolor interdum. Ante a dolor fames a ultrices in lacus. Gravida consectetur at cursus mauris sit ridiculus id sollicitudin.'
                    'Pharetra sagittis cursus odio euismod enim pellentesque ac fringilla odio. Libero venenatis suspendisse scelerisque id. Pellentesque aliquet tortor arcu vel'
                    'vitae tempor vitae lorem. Pretium in amet cursus sem enim elementum. Elit a eu dolor interdum. Ante a dolor fames a ultrices in lacus. Gravida consectetur at cursus '
                    'mauris sit ridiculus id sollicitudin. Pharetra sagittis cursus odio euismod enim pellentesque ac fringilla odio'
                    'Venenatis at non volutpat integer nullam sit. Felis lacus nibh semper aliquam mauris sed. Rhoncus imperdiet sed urna tellus'
                    'Diam velit nisi risus in elit nunc ac. Pellentesque non posuere lorem orci. Sapien dictumst netus lobortis sem semper eu nisi tellus.'
                    'Elit a eu dolor interdum. Ante a dolor fames a ultrices in lacus. Gravida consectetur at cursus mauris sit ridiculus id sollicitudin.'
                    'Pharetra sagittis cursus odio euismod enim pellentesque ac fringilla odio. Libero venenatis suspendisse scelerisque id. Pellentesque aliquet tortor arcu vel'
                    'vitae tempor vitae lorem. Pretium in amet cursus sem enim elementum. Elit a eu dolor interdum. Ante a dolor fames a ultrices in lacus. Gravida consectetur at cursus '
                    'mauris sit ridiculus id sollicitudin. Pharetra sagittis cursus odio euismod enim pellentesque ac fringilla odio',
                    style: NormalText,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
