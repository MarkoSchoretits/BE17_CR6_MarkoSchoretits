<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('date', DateTimeType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('description', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('picture', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('capacity', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('email', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('phone', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('location', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('street', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('number', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('zip', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('city', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('url', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
            ->add('type', TextType::class, ['attr' => ['class' => 'form-control form-control-sm bg-light']])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
