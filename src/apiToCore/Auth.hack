<?hh 

namespace Uploadrc/ApiToCopre;

use Uploadrc/ApiToCopre/ApiToCore;
use Uploadrc/ApiToCopre/AuthInterface;
use Uploadrc/Memcache/MoreCache;
use Uploadrc/Curl/Post;
use Uploadrc/Env/Confer;

class Auth extends ApiToCore implements AuthInterface {
    use AuthCache;
    use Post;
    use Confer;
    public function startUp(int $serial): bool
    {
         $result = await $this->send(
              $this->conf->core['usrl'],
              $this->conf->ident
         );
         if( $result->code !== 200 )
              return false;
         $result->cache->token(data['key']);
         return true;
    }
    public function cronJob(int $tick): bool
    {
         $result = await $this->send(
              $this->conf->core['usrl']
         );
         if( $result->code !== 200 )
              return false;
         $result->cache->token(data['key']);
         return true;
    }
}
