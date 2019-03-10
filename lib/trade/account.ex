defmodule Trading.Account do
	defstruct balances: []

	def get_account() do
		Binance.get_account()
	end

	def balances() do
		{:ok, account} = get_account()
		account.balances
	end

	def balance_for(currency) do
		balances()
		|> Enum.find(fn balance ->
			balance["asset"] == currency
		end)
	end
end
