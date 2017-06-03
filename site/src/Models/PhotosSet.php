<?php

namespace Site\Models;

class PhotosSet
{
	public $db;

	public function __construct($db)
	{
		$this->db = $db;
	}

	public function getAll()
	{
		$query = $this->db->query(
			'SELECT * FROM photos_set'
		);
		$photos_set = $query->fetchAll();

		return $photos_set;
	}

	public function getAllPhotosByPhotosSet($name)
	{
		$prepare = $this->db->prepare(
			'SELECT 
				* 
			FROM 
				photos
			WHERE
				photos_set = :name'
		);
		$prepare->bindValue('name', $name);
		$prepare->execute();
		$photos = $prepare->fetchAll();

		return $photos;
	}

	public function getBySlug($slug)
	{
		$prepare = $this->db->prepare('
			SELECT
				*
			FROM
				photos_set
			WHERE
				slug = :slug
			LIMIT 1
		');
		$prepare->bindValue('slug', $slug);
		$prepare->execute();
		$photosSet = $prepare->fetch();

		return $photosSet;
	}

	public function getPhotoSetsWithPresentationPicture()
	{
		$query = $this->db->query('
			SELECT
				p.picture, ps.*
			FROM
				photos_set AS ps
			LEFT JOIN
				photos AS p
			ON
				ps.presentation_picture = p.name
		');
		$presentationPicture = $query->fetchAll();

		return $presentationPicture;
	}
}