        ?  �      ���������̾�����e���?�%�[            (�/�`� �	 ��:' �� �<*Y)�=�[5,`!�(�R��f�'���0 0 - �5A��#!!�q4��} e4���_�����2���[������u�$#u��n�X�GW�5>�QB�����X��+���Y����|}J�*{`���(�my�U��?o�J/Oq|�$?~�����(eDi�j���K2�aeQ�������&�Z�Z1��(�@U�f�	�8O֭b�EC�9 ]%L� �!����͈E�� �a�56�I��cm�G	A��u����`�ĻhL8<���fF��s/�6e    ?     Z  �      |    ����)[X��}D$����
��               -   -   my $debug=0;

   �   �   4		print "Generating keycodes/$keyname\n" if $debug;
    �     ;  �     14   �����~_2J>ϑ(2ޠ&��I��d               H   �   /	if (m/struct\s+ir_scancode\s+(\w[\w\d_]+)/) {
    �     �  �     15   �����4���~�
�5��nġJ�l               H   �   Q	if (m/struct\s+(dvb_usb_rc_key|ir_scancode)\s+(\w[\w\d_]+)/) {
		$keyname = $2;
    G   ,		if (m/(0x[\dA-Fa-f]+).*(KEY_[^\s\,]+)/) {
    i     :  �     19   ����/0���\��ȘC���㕉              0  \   .		if (m/(0x[\dA-Fa-f]+).*(KEY_[^\s\,\}]+)/) {
