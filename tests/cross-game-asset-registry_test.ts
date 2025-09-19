import { Clarinet, Tx, Chain, Account, types } from 'https://deno.land/x/clarinet@v1.0.6/index.ts';
import { assertEquals } from 'https://deno.land/std@0.170.0/testing/asserts.ts';

Clarinet.test({
  name: "Cross-Game Asset Registry: Game Registration Test",
  async fn(chain: Chain, accounts: Map<string, Account>) {
    const deployer = accounts.get('deployer')!;
    const gameId = "game-universe-001";
    const gameName = "Cosmic Quest";
    const gameDescription = types.utf8("An intergalactic adventure game");

    let block = chain.mineBlock([
      Tx.contractCall('cross-game-asset-registry', 'register-game', [
        types.ascii(gameId),
        types.ascii(gameName),
        types.none(),
        gameDescription
      ], deployer.address)
    ]);

    assertEquals(block.receipts[0].result, '(ok true)');
  }
})