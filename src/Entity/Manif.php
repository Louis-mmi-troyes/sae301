<?php

namespace App\Entity;

use App\Repository\ManifRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ManifRepository::class)]
class Manif
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $manif_id = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $manif_titre = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $manif_description = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $manif_auteur = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $manif_genre = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    private ?\DateTimeInterface $manif_date = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $manif_affiche = null;

    #[ORM\Column(length: 4)]
    private ?string $manif_prix = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $manif_duree = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getManifId(): ?int
    {
        return $this->manif_id;
    }

    public function setManifId(int $manif_id): self
    {
        $this->manif_id = $manif_id;

        return $this;
    }

    public function getManifTitre(): ?string
    {
        return $this->manif_titre;
    }

    public function setManifTitre(string $manif_titre): self
    {
        $this->manif_titre = $manif_titre;

        return $this;
    }

    public function getManifDescription(): ?string
    {
        return $this->manif_description;
    }

    public function setManifDescription(string $manif_description): self
    {
        $this->manif_description = $manif_description;

        return $this;
    }

    public function getManifAuteur(): ?string
    {
        return $this->manif_auteur;
    }

    public function setManifAuteur(string $manif_auteur): self
    {
        $this->manif_auteur = $manif_auteur;

        return $this;
    }

    public function getManifGenre(): ?string
    {
        return $this->manif_genre;
    }

    public function setManifGenre(string $manif_genre): self
    {
        $this->manif_genre = $manif_genre;

        return $this;
    }

    public function getManifDate(): ?\DateTimeInterface
    {
        return $this->manif_date;
    }

    public function setManifDate(\DateTimeInterface $manif_date): self
    {
        $this->manif_date = $manif_date;

        return $this;
    }

    public function getManifAffiche(): ?string
    {
        return $this->manif_affiche;
    }

    public function setManifAffiche(string $manif_affiche): self
    {
        $this->manif_affiche = $manif_affiche;

        return $this;
    }

    public function getManifPrix(): ?string
    {
        return $this->manif_prix;
    }

    public function setManifPrix(string $manif_prix): self
    {
        $this->manif_prix = $manif_prix;

        return $this;
    }

    public function getManifDuree(): ?string
    {
        return $this->manif_duree;
    }

    public function setManifDuree(string $manif_duree): self
    {
        $this->manif_duree = $manif_duree;

        return $this;
    }
}
