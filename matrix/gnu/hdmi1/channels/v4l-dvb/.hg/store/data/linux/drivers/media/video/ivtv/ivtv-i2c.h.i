        �  Q      ����������v	�9�-�fi3�����N��            (�/�`Qm m�&��8 ��_��g�F��ؕ޵��	��1^�rP�D�&+<x t { ?����ݛ�];<�����W:e�������:���ș�2V1`t@�$��a�\/�R�F��L>�rH�������8�]5"|n�a�#k�K$i�H��
���e�B��b�^�,��h<��2�>�ھ�Ě�S,���P��P�6���];�����B��a��$���>�2�Y%����G�t���X��^��ᚆ��b4;u_��[;s���u���p�����b��/�7��I�)�GQ6���H�j�� ���V?�<rX��H��yn�Z�_|J�%t�LZw��Z;����`�}���}�y�j~�f��`��"6K��0���h�F�p�,���%²@Uꡒa���Cݜ.o��s�}Σ�����nMLٳ�o��ƃA;.CBg=~�a�a�?E�{��cM1p��$!xYI"��

�	R��x�k���������>Қ��l
 I&��h��;2��h�Ai6� S��F!� @ P1P"1�Y��9#���� $���`�(l@ �D=��.q�v(\���_�Kr�A�0��?nb�`��H��n��%��G�I^e��i��^<�l���9��]��7@�f���9�pN���ۂB��I��1ޫE���Pc�""����>�þ�Ɉ _���f����.�%V�3PuV��@C�1� ���ý̆ō[U%    �       �          �����`%�����
>�{y�?�<P              q  �      8  h             D       �   ����]E�`�/��%������            (�/� G� �  m '#ifndef IVTV_I2C_H
#define
  � 
#endif
 �Ac��G    S     2       |   �����W���k��Ao�����              �     &void exit_ivtv_i2c(struct ivtv *itv);
    �     C  <     m   ����rq �z%7����&���Gy              |  |   7int ivtv_i2c_register(struct ivtv *itv, unsigned idx);
    �     1  2     �   ����Ok��v��Y7�su]����՟              �     %int init_ivtv_i2c(struct ivtv *itv);
    �     T  �     &k   �������W%�sd;<?$�8B              �  |      �  �   <struct v4l2_subdev *ivtv_find_hw(struct ivtv *itv, u32 hw);
    M     I  �     4�   �����4���K/7��:��
              �  �   =struct i2c_client *ivtv_i2c_new_ir_legacy(struct ivtv *itv);
