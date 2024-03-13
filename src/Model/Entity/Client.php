<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Client Entity
 *
 * @property string $id
 * @property string $full_name
 * @property \Cake\I18n\Date $date_of_birth
 * @property string $occupation
 * @property string $home_address
 * @property string|null $postal_address
 * @property string $email
 * @property string $phone
 */
class Client extends Entity
{
    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array<string, bool>
     */
    protected array $_accessible = [
        'full_name' => true,
        'date_of_birth' => true,
        'occupation' => true,
        'home_address' => true,
        'postal_address' => true,
        'email' => true,
        'phone' => true,
    ];
}
