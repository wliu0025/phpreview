<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * ClientsFixture
 */
class ClientsFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => '618a9a49-0050-476a-89cc-b70a1e924c1a',
                'full_name' => 'Lorem ipsum dolor sit amet',
                'date_of_birth' => '2024-03-13',
                'occupation' => 'Lorem ipsum dolor sit amet',
                'home_address' => 'Lorem ipsum dolor sit amet',
                'postal_address' => 'Lorem ipsum dolor sit amet',
                'email' => 'Lorem ipsum dolor sit amet',
                'phone' => '',
            ],
        ];
        parent::init();
    }
}
