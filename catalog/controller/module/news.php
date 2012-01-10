<?php
class ControllerModuleNews extends Controller {
	protected function index($setting) {
		$this->load->language('module/news');
		$this->load->model('fido/news');

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_read_more'] = $this->language->get('text_read_more');
		$this->data['text_date_added'] = $this->language->get('text_date_added');

		$this->data['show_headline'] = $this->config->get('news_module_headline');

		$this->data['news_count'] = $this->model_fido_news->getTotalNews();

		$this->data['news'] = array();

		$results = $this->model_fido_news->getNewsShorts($setting['limit']);

		foreach ($results as $result) {
			$tem=html_entity_decode($result['description'],ENT_QUOTES);
			$this->data['news'][] = array(
				'title'        => $result['title'],
				'description'  => substr($tem, 0, $setting['numchars']),
				'href'         => $this->url->link('information/news', 'news_id=' . $result['news_id']),
				'date_added'   => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$this->id = 'news';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/news.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/news.tpl';
		} else {
			$this->template = 'default/template/module/news.tpl';
		}

		$this->render();
	}
}
?>
