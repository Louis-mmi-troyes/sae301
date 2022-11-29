<?php

namespace App\Entity;

use App\Repository\SalleRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: SalleRepository::class)]
class Salle
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $lieu_id = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $lieu_adresse = null;

    #[ORM\Column(length: 6)]
    private ?string $lieu_capaciter = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $lieu_nom = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLieuId(): ?string
    {
        return $this->lieu_id;
    }

    public function setLieuId(string $lieu_id): self
    {
        $this->lieu_id = $lieu_id;

        return $this;
    }

    public function getLieuAdresse(): ?string
    {
        return $this->lieu_adresse;
    }

    public function setLieuAdresse(string $lieu_adresse): self
    {
        $this->lieu_adresse = $lieu_adresse;

        return $this;
    }

    public function getLieuCapaciter(): ?string
    {
        return $this->lieu_capaciter;
    }

    public function setLieuCapaciter(string $lieu_capaciter): self
    {
        $this->lieu_capaciter = $lieu_capaciter;

        return $this;
    }

    public function getLieuNom(): ?string
    {
        return $this->lieu_nom;
    }

    public function setLieuNom(string $lieu_nom): self
    {
        $this->lieu_nom = $lieu_nom;

        return $this;
    }
}
