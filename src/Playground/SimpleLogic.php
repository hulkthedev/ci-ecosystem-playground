<?php

namespace Playground;

class SimpleLogic
{
    private int $a;
    private int $b;

    /**
     * @param int $a
     * @param int $b
     */
    public function __construct(int $a, int $b)
    {
        $this->a = $a;
        $this->b = $b;
    }

    /**
     * @return int
     */
    public function multiplication(): int
    {
        return $this->a * $this->b;
    }
}
