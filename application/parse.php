<?php
require_once 'simple_html_dom.php';
$url_main = "https://www.citrus.ua";
$url_category = [
    "1" => "/shop/goods/mobile/189/",
    "2" => "/shop/goods/tabletpc/262/",
    "3" => "/shop/goods/notebooks/188/"
];

function getProductList($url_main, $url_category)
{
    for ($i = 1; $i <= 3; $i++) {
        for ($j = 1; $j <= 3; $j++) {
            $data = file_get_html($url_main . $url_category[$i] . "?PAGEN_9=" . $j);

            foreach ($data->find('.module_item') as $article) {
                $item['name'] = $article->find('.center_container', 0)->plaintext;
                $item['description'] = $article->find('.mini_props', 0)->plaintext;
                $item['price'] = $article->find('.catalog-price', 0)->plaintext;

                foreach ($article->find('.section_preview') as $element) {
                    if (!empty($element->src)) {
                        $image_link = substr($element->src, -36, 32);
                        $item['image_link'] = 'image/' . $image_link . '.jpg';
                    }
                }
                //$i - цикл по категории, переменная соответствуем ид в базе
                $item['category_id'] = $i;

                $articles[] = $item;
                echo $item['name'] . ", " . $item['description'] . ", " . $item['price'] . ", " . $item['image_link'] . ", " . $item['category_id'] . "<br>";
            }

        }

    }
}

    function downloadImages($url_main, $url_category)
    {
        for ($i = 1; $i <= 3; $i++) {
            for ($j = 1; $j <= 3; $j++) {
                $data = file_get_html($url_main . $url_category[$i] . "?PAGEN_9=" . $j);

                foreach ($data->find('.section_preview') as $element) {
                    if ($element->src != '') {

                        $url = $url_main . $element->src;

                        $image_names = substr($url, -36, 32);
                        $ch = curl_init($url);
                        $fp = fopen('image/' . $image_names . '.jpg', 'wb');
                        curl_setopt($ch, CURLOPT_FILE, $fp);
                        curl_setopt($ch, CURLOPT_HEADER, 0);
                        curl_exec($ch);
                        curl_close($ch);
                        fclose($fp);
                        //echo $image_names . "<br>";
                    }
                }
            }
        }
    }

//  getProductList($url_main, $url_category);
downloadImages($url_main, $url_category);