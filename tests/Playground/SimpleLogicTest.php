<?php

namespace Playground;

use PHPUnit\Framework\TestCase;

class SimpleLogicTest extends TestCase
{
    public function test_Logic(): void
    {
        $logic = new SimpleLogic(10, 10);
        TestCase::assertEquals(100, $logic->multiplication());
    }
}
