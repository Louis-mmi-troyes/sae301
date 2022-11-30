<?php

namespace App\Controller\Admin;
use App\Entity\Salle;
use App\Entity\Manif;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;

use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;


class ManifCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Manif::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->onlyOnindex(),
            TextField::new('manifTitre'),
            ImageField::new('manifAffiche')->setBasePath('uploads/')->setUploadDir('public/uploads/'),
            TextField::new('manifGenre'),
            TextField::new('manifDescription'),
            TextField::new('manifAuteur'),
            TextField::new('manifPrix'),
            #DateField::new('manifDate'),
            TextField::new('manifDuree'),

        ];
    }
    
}