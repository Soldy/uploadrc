<?hh

namespace Uploadrc\upload;


interface PieceInterface {
    public function upload(string $hash, nt $serial, object $piece ): bool;
}
