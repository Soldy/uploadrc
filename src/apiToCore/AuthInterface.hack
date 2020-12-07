<?hh 

namespace Uploadrc\ApiToCopre;

interface AuthInterface {
    public function startUp(int $serial): boolean;
    public function cronJob(int $tick): boolean;
}
