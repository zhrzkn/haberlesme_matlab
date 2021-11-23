L=20;                                    % Kuantalayıcının seviye sayısı 20.
x=randn(1,10000);                        % Normal dağılımlı örnek bir işaret.
[partition,codebook]=lloyds(x,L);           % Kuantalayıcının parametreleri tespit edildi.
vg=-7:0.001:7;                            % (-7,7) arasında giriş işareti.
[indx,vc]=quantiz(vg,partition,codebook);  % Giriş işareti kuantalandı.
plot(vg,vc,'.b')                                                   % Grafik çizdirildi.
