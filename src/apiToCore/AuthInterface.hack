<?hh 

namespace Uploadrc\ApiToCopre;

interface AuthInterface {
    public function startUp(int $serial): bool;
    public function cronJob(int $tick): bool;
}
