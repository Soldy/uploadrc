
<?hh 

namespace Uploadrc\ApiToCopre;

interface RegisterInterface {
    public function file(istring $name,string $hash,int $pieces, int $size): boolean;
}
