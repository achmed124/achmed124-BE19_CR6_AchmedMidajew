<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please type in the name of the event"
                        ],
            ])
            ->add('date_start', null, [
                'attr' => ['class' => 'mb-3 form-control'],
                "widget" => "single_text"
            ])
            ->add('description', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please descripe your event!"
                        ],
            ])
            ->add('image', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please type in the URL of a picture for your event!"
                        ],
            ])
            ->add('capacity', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please type the maximum capacity of the event!"
                        ],
            ])
            ->add('email', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please type in your email address!"
                        ],
            ])
            ->add('phone', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please type in your phone number!"
                        ],
            ])
            ->add('address', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please type in your street name and number, ZIP code and citiy name!"
                        ],
            ])
            ->add('URL', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Please type in the URL of your website!"
                        ],
            ])
            ->add('type', null, [
                'attr' => ['class' => 'mb-3 form-control',
                            "placeholder" => "Pleasy type in the type of the event!"
                        ],
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
