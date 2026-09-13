-- 1. Открываем транзакцию
BEGIN;

-- 2. Списываем товар со склада
UPDATE products SET stock_count = stock_count - 1 WHERE product_id = 101;

-- 3. Списываем деньги с кошелька покупателя
UPDATE consumers SET wallet = wallet - 50000 WHERE consumer_id = 1;

-- 4. Начисляем деньги на счет магазина
UPDATE stock_bank_account SET balance = balance + 50000 WHERE account_id = 1; 
-- (Предполагаем, что у магазина account_id = 1. Если нет, подставь свой ID)

-- 5. Сохраняем изменения навсегда
COMMIT;